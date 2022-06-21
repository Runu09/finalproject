package com.onair.proj.voc.controller;




import java.io.File;
import java.util.HashMap;
import java.util.List;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.FileUploadUtil;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.voc.model.VocService;
import com.onair.proj.voc.model.VocVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/voc")
public class VoCController {
	private static final Logger logger
		=LoggerFactory.getLogger(VoCController.class);
	
	private final VocService vocService;
	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;
	
	//안내화면
	@RequestMapping("/voc_main")
	public String VocMain() {
		logger.info("고객의 소리 메인화면");
		return "/voc/voc_main";
	}
	
	//글등록
	@GetMapping("/voc_write")
	public String VocWrite_get(HttpSession session,Model model) {
		logger.info("고객의 소리 등록하기 화면");
		String memId=(String)session.getAttribute("memId");
		MemberVO memVo = new MemberVO();
		memVo.setMemId(memId);
		
		model.addAttribute("memVo", memVo);
		
		return "/voc/voc_write";
	}
	
	@PostMapping("/voc_write")
	public String VocWrite_post(@ModelAttribute VocVO vo, HttpServletRequest request,Model model) {
		logger.info("고객의 소리 글등록 처리, 파라미터 vo={}", vo);
		
		logger.info("체크할 아이디, 비밀번호 vo.getBId()={}, vo.getBPwd()={}", vo.getBId(), vo.getBPwd());
		String msg="비밀번호 체크 실패", url="/voc/voc_write";
		int result=memberService.checkLogin(vo.getBId(), vo.getBPwd());
		
		if(result==MemberService.LOGIN_OK) {
		//파일 업로드 처리
		String fileName="", originFileName="";
		long fileSize=0;
		try {
			List<Map<String, Object>> fileList
			=fileUploadUtil.fileUpload(request, 
					ConstUtil.UPLOAD_FILE_FLAG);
			logger.info("fileList.size()={}",fileList.size());
			for(Map<String, Object> fileMap : fileList) {
				//다중 파일 업로드 처리 해야 함!

				originFileName=(String) fileMap.get("originalFileName");
				fileName=(String) fileMap.get("fileName");
				fileSize= (long) fileMap.get("fileSize");				
			}//for

			logger.info("파일 업로드 성공, fileName={}, fileSize={}", fileName,
					fileSize);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		vo.setFName(fileName);
		vo.setFOriginName(originFileName);
		vo.setFFileSize(fileSize);
		
		logger.info("파일명 체크 vo={}",vo);
		
		int cnt=vocService.insertVoc(vo);
		logger.info("글등록 처리 결과, cnt={}", cnt);
		}else if(result==MemberService.DISAGREE_PWD) {
			msg="비밀번호가 일치하지 않습니다";
			
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
			return "/common/message";
		}
		
		return "redirect:/voc/voc_list";
	}
	
	@RequestMapping("/voc_list")
	public String VocList_get(Model model) {
		logger.info("고객의 소리 리스트 화면");
		
		List<VocVO> list=vocService.selectAll();
		logger.info("고객의 소리 리스트 조회결과 list.size={}", list.size());
		
		model.addAttribute("list", list);
		
		return "/voc/voc_list";
	}
	
	@RequestMapping("/updateCount")
	public String updateCount(@RequestParam(defaultValue = "0") int bNo,Model model) {
		logger.info("조회수 증가, 파라미터 bNo={}",bNo);
		
		if(bNo==0) {
			model.addAttribute("msg","잘못된 url!");
			model.addAttribute("url","/voc/voc_list");
			return "/common/message";
		}
		
		int cnt=vocService.updateCount(bNo);
		logger.info("조회수 증가 결과, cnt={}", cnt);
		
		return "redirect:/voc/voc_detail?bNo="+bNo;
	}
	
	@RequestMapping("/voc_detail")
	public String voc_detail(@RequestParam(defaultValue = "0") int bNo,
			HttpServletRequest request,Model model) {
		logger.info("voc 상세보기 파라미터 bNo={}", bNo);
		
		if(bNo==0) {
			model.addAttribute("msg", "잘못된 url!");
			model.addAttribute("url", "/voc/voc_list");
			return "/common/message";
		}
		
		VocVO vo=vocService.selectByNo(bNo);
		logger.info("상세보기 결과 vo={}",vo);
		
		//파일정보 처리
		String fileInfo=fileUploadUtil.getFileInfo(vo.getFOriginName(), vo.getFFileSize(), request);
		
		model.addAttribute("vo", vo);
		model.addAttribute("fileInfo", fileInfo);
		
		return "/voc/voc_detail";
	}
	
	@RequestMapping("/download")
	public ModelAndView download(@RequestParam(defaultValue = "0") int bNo,
			@RequestParam String fName, HttpServletRequest request){
		logger.info("다운로드 처리, 파라미터 bNo={}, fName={}", bNo, fName);
		
		int cnt=vocService.updateDownCount(bNo);
		logger.info("다운로드 수 증가 결과 cnt={}", cnt);
		
		Map<String, Object> map = new HashMap<>();
		String uploadPath = fileUploadUtil.getUploadPath(request, ConstUtil.UPLOAD_FILE_FLAG);
		File file = new File(uploadPath,fName);
		map.put("file", file);
		
		ModelAndView mav = new ModelAndView("VocDownloadView", map);
		
		return mav;
	}
}
