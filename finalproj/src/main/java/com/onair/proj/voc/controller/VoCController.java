package com.onair.proj.voc.controller;




import java.io.File;
import java.io.IOException;
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
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.common.SearchVO;
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
	public String VocList_get(@ModelAttribute SearchVO searchVo,Model model) {
		logger.info("고객의 소리 리스트 화면, 파라미터 searchVo={}", searchVo);
		//검색 조건 제목만 할것임
		searchVo.setSearchCondition("BTitle");
		
		//페이징 처리 로직 시작
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		
		List<VocVO> list=vocService.selectAll(searchVo);
		logger.info("고객의 소리 리스트 조회결과 list.size={}", list.size());
		
		int totalRecord=vocService.getTotalRecord(searchVo);
		logger.info("글목록 TotalRecord={}", totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
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
	public String voc_detail(@RequestParam(defaultValue = "0") int bNo,HttpSession session,
			HttpServletRequest request,Model model) {
		logger.info("voc 상세보기 파라미터 bNo={}", bNo);
		
		if(bNo==0) {
			model.addAttribute("msg", "잘못된 url!");
			model.addAttribute("url", "/voc/voc_list");
			return "/common/message";
		}
		
		//memId 비교값 넘겨주기
		String memId=(String)session.getAttribute("memId");
		MemberVO memVo = new MemberVO();
		memVo.setMemId(memId);
		logger.info("memVo={}",memVo);
		
		VocVO vo=vocService.selectByNo(bNo);
		logger.info("상세보기 결과 vo={}",vo);
		
		//파일정보 처리
		String fileInfo=fileUploadUtil.getFileInfo(vo.getFOriginName(), vo.getFFileSize(), request);
		
		model.addAttribute("vo", vo);
		model.addAttribute("memVo", memVo);
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
		
		ModelAndView mav = new ModelAndView("vocDownloadView", map);
		
		return mav;
	}
	
	@GetMapping("/voc_edit")
	public String edit_get(@RequestParam(defaultValue = "0") int bNo,HttpSession session, Model model) {
		logger.info("voc 글수정, 파라미터 bNo={}", bNo);
		
		if(bNo==0) {
			model.addAttribute("msg","잘못된 url입니다");
			model.addAttribute("url","/voc/voc_list");
			return "/common/message";
		}
		
		//memId 비교값 넘겨주기
		String memId=(String)session.getAttribute("memId");
		MemberVO memVo = new MemberVO();
		memVo.setMemId(memId);
		logger.info("memVo={}",memVo);
		
		VocVO vo=vocService.selectByNo(bNo);
		logger.info("수정할 글 상세보기 결과 vo={}", vo);
		
		model.addAttribute("vo", vo);
		model.addAttribute("memVo", memVo);
		
		return "/voc/voc_edit";
	}
	
	@PostMapping("/voc_edit")
	public String edit_post(@ModelAttribute VocVO vo, @RequestParam String oldFileName,
			HttpServletRequest request, Model model) {
		logger.info("voc 글수정 처리, 파라미터 vo={},oldFileName={}", vo,oldFileName);
		
		String msg="비밀번호 체크 실패", url="/voc/voc_edit?bNo="+vo.getBNo();
		if(vocService.checkPwd(vo.getBNo(), vo.getBPwd())) {
			//파일 처리
			String fileName="", originFileName="";
			long fileSize=0;
			List<Map<String, Object>> fileList=null;
			try {
				fileList=fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_FILE_FLAG);
				for(Map<String, Object> fileMap : fileList) {
					fileName=(String)fileMap.get("fileName");
					originFileName=(String)fileMap.get("originalFileName");
					fileSize=(long)fileMap.get("fileSize");
				}//
				
				logger.info("글수정-파일업로드 처리 성공");
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			vo.setFName(fileName);
			vo.setFOriginName(originFileName);
			vo.setFFileSize(fileSize);
			
			int cnt=vocService.updateVoc(vo);
			logger.info("글 수정 처리 결과, cnt={}", cnt);
			
			if(cnt>0) {
				msg="글 수정되었습니다";
				url="/voc/voc_detail?bNo="+vo.getBNo();
				
				if(!fileList.isEmpty()) {//새로운 파일 첨부시
					if(oldFileName!=null && !oldFileName.isEmpty()) {
						String uploadPath = fileUploadUtil.getUploadPath(request, ConstUtil.UPLOAD_FILE_FLAG);
						File oldFile = new File(uploadPath, oldFileName);
						if(oldFile.exists()) {
							boolean bool=oldFile.delete();
							logger.info("글수정-파일삭제 체크 : {}", bool);
						}
					}
				}
			}else {
				msg="글 수정 실패";
			}
		}else {
			msg="비밀번호 불일치";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@GetMapping("/voc_delete")
	public String delete_get(@RequestParam(defaultValue = "0") int bNo, 
			@ModelAttribute VocVO vo, Model model) {
		logger.info("voc 글삭제 화면보기, 파라미터 bNo={}, vo={}", bNo, vo);
		
		if(bNo==0) {
			model.addAttribute("msg", "잘못된 접근입니다");
			model.addAttribute("url", "/voc/voc_list");
			return "/common/message";
		}
		
		return "/voc/voc_delete";
	}
	
	@PostMapping("/voc_delete")
	public String delete_post(@ModelAttribute VocVO vo, HttpServletRequest request, Model model) {
		logger.info("voc 글삭제 처리, 파라미터 vo={}", vo);
		
		String msg="비밀번호 체크 실패",url="/voc/voc_delete?bNo="+vo.getBNo()
		+"&BGroupno="+vo.getBGroupno()+"&BStep="+vo.getBStep()+"&FName="+vo.getFName();
		if(vocService.checkPwd(vo.getBNo(), vo.getBPwd())) {
			Map<String, String> map = new HashMap<>();
			map.put("BNo", vo.getBNo()+"");
			map.put("BGroupno", vo.getBGroupno()+"");
			map.put("BStep", vo.getBStep()+"");
			
			vocService.deleteVoc(map);
			msg="글 삭제 완료";
			url="/voc/voc_list";
				
			String uploadPath=fileUploadUtil.getUploadPath(request, 
					ConstUtil.UPLOAD_FILE_FLAG);
			File delFile = new File(uploadPath, vo.getFName());
			if(delFile.exists()) {
				boolean bool=delFile.delete();
				logger.info("파일 삭제 여부: {}",bool);
			}
		}else {
			msg="비밀번호 불일치";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);

		return "/common/message";
	}
}
