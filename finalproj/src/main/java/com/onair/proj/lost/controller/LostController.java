package com.onair.proj.lost.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.onair.proj.board.model.BoardService;
import com.onair.proj.board.model.BoardVO;
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.DateSearchVO;
import com.onair.proj.common.FileUploadUtil;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.member.model.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/lost")
@RequiredArgsConstructor
public class LostController {

	private static final Logger logger
	= LoggerFactory.getLogger(LostController.class);

	private final BoardService boardService;
	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;


	@RequestMapping("/detail.do")
	public String detail(@RequestParam(defaultValue = "0") int bNo, Model model) {
		logger.info("유실물 상세 조회");
		BoardVO vo=boardService.selectByNo(bNo);
		logger.info("상품 상세 조회 결과 vo={}",vo);

		model.addAttribute("vo", vo);

		return "/lost/detail";
	}

	@GetMapping("/write.do")
	public void lost_get() {
		logger.info("유실물 조회 - 글쓰기 화면");
	}

	@PostMapping("/write.do")
	public String lost_post(@ModelAttribute BoardVO vo, HttpSession session, HttpServletRequest request,Model model) 
	{	
		logger.info("유실물 조회 - 글쓰기 처리, 파라미터 vo={}", vo);
		//파일 업로드 처리
		String fileName="", originFileName="";
		long fileSize=0;
		try {
			List<Map<String, Object>> fileList
			=fileUploadUtil.fileUpload(request,	ConstUtil.UPLOAD_IMAGE_FLAG);

			for(Map<String, Object> fileMap : fileList) {
				originFileName=(String) fileMap.get("originalFileName");
				fileName=(String) fileMap.get("fileName");
				fileSize= (long) fileMap.get("fileSize");				
			}//for

			logger.info("파일 업로드 성공, fileName={}, fileSize={}", fileName,
					fileSize);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String memId=(String) session.getAttribute("memId");
		logger.info("==========memId={}", memId);
		String memPwd=memberService.selectByMemId(memId).getMemPwd();
		vo.setBId(memId);
		vo.setBPwd(memPwd);
		vo.setFName(fileName);
		vo.setFOriginName(originFileName);
		vo.setFFileSize(fileSize);
		vo.setBtNo(2);	//유실물조회

		logger.info("==========세팅후\n 유실물 조회 - 글쓰기 처리, 파라미터 vo={}", vo);
		int cnt=boardService.insertBoard(vo);
		logger.info("글쓰기 처리 결과, cnt={}", cnt);

		return "redirect:/lost/list.do";
	}


	@RequestMapping("/list.do")
	public String lost_list(@ModelAttribute DateSearchVO searchVo,
			Model model) {
		logger.info("유실물 조회 글 목록, 파라미터 searchVo={}", searchVo);


		//[조회] 버튼을 누르지 않더라도 오늘 날짜의 주문 내역은 자동으로 나오게 한다
		if(searchVo.getStartDay()==null || searchVo.getStartDay().isEmpty())
		{	
			Date today=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String str=sdf.format(today);

			searchVo.setStartDay(str);
			searchVo.setEndDay(str);

			logger.info("현재일자 setting searchVo={}",searchVo);
		}

		//페이징에 필요한 변수 셋팅
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);

		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());

		List<BoardVO> list=boardService.selectLostAll(searchVo);
		logger.info("유실물 조회 결과 list.size={}", list.size());

		int totalRecord=boardService.selectLostTotalRecord(searchVo);
		logger.info("유실물 조회 결과 totalRecord={}", totalRecord);

		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("list",list);
		model.addAttribute("pagingInfo",pagingInfo);




		return "/lost/list";
	}

	@GetMapping("/edit.do")
	public String edit_get(@RequestParam(defaultValue = "0") int bNo, Model model) {
		logger.info("유실물 조회 글 수정 페이지, 파라미터 bNo = {}", bNo);

		if(bNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/lost/list.do");
			return "/common/message";
		}

		BoardVO vo = boardService.selectByNo(bNo);
		logger.info("수정할 글 상세보기 결과 vo = {}", vo);

		model.addAttribute("vo", vo);

		return "/lost/edit";
	}

	@PostMapping("/edit.do")
	public String edit_post(@ModelAttribute BoardVO vo, 
			@RequestParam String oldFileName,
			HttpServletRequest request, Model model) {
		logger.info("유실물 수정 처리, 파라미터 vo={}", vo);

		String msg="글 수정 실패!", url="/lost/edit.do?bNoo="+vo.getBNo();

		//파일 업로드 처리
		String fileName="", originFileName="";
		long fileSize=0;
		List<Map<String, Object>> fileList=null;
		try {			
			fileList
			=fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_IMAGE_FLAG);
			for(Map<String, Object> fileMap: fileList) {
				fileName=(String) fileMap.get("fileName");
				originFileName=(String) fileMap.get("originalFileName");
				fileSize=(long) fileMap.get("fileSize");
			}//for

			logger.info("유실물 글수정-파일 업로드 성공!");
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		vo.setFName(fileName);
		vo.setFOriginName(originFileName);
		vo.setFFileSize(fileSize);


		int cnt=boardService.updateBoard(vo);
		logger.info("유실물 글 수정 처리 결과, cnt={}", cnt);

		if(cnt>0) {
			msg="글 수정되었습니다.";
			url="/lost/detail.do?bNo="+vo.getBNo();

			if(!fileList.isEmpty()) {  //새로 파일 첨부한 경우
				if(oldFileName!=null && !oldFileName.isEmpty()) {
					//기존 파일이 있는 경우
					String uploadPath
					=fileUploadUtil.getUploadPath(request, 
							ConstUtil.UPLOAD_IMAGE_FLAG);
					File oldFile = new File(uploadPath, oldFileName);
					if(oldFile.exists()) {
						boolean bool=oldFile.delete();
						logger.info("유실물 글수정-파일 삭제여부 : {}", bool);
					}
				}
			}
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";
	}
	@RequestMapping("/delete.do")
	public String delete(@RequestParam(defaultValue = "0") int bNo,
			HttpServletRequest request, Model model) {
		logger.info("유실물 삭제 처리, 파라미터 bNo = {}", bNo);

		String msg="삭제 처리 실패 ",url="/lost/detail.do?bNo="+bNo;

		if(bNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다");
			return "/common/message";
		}

		BoardVO vo=boardService.selectByNo(bNo);
		String delFilename=vo.getFName();
		boardService.deleteBoard(bNo);			
		logger.info("삭제할 파일 = {}", delFilename);

		msg="글 삭제 완료";
		url="/lost/list.do";

		String uploadPath = fileUploadUtil.getUploadPath(request, 
				ConstUtil.UPLOAD_IMAGE_FLAG);
		File delFile = new File(uploadPath, delFilename);
		if(delFile.exists()) {
			boolean bool=delFile.delete();
			logger.info("파일 삭제 여부: {}", bool);
		}

		model.addAttribute("msg",msg);
		model.addAttribute("url",url);

		return "common/message";
	}

}
