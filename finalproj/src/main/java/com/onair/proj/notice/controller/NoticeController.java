package com.onair.proj.notice.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
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

import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.DateSearchVO;
import com.onair.proj.common.FileUploadUtil;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.notice.model.NoticeService;
import com.onair.proj.notice.model.NoticeVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger logger
	=LoggerFactory.getLogger(NoticeController.class);
	
	private final NoticeService noticeService;
	private final FileUploadUtil fileUploadUtil;
	
	//공지사항 리스트
	@RequestMapping("/notice.do")
	public String notice(@ModelAttribute DateSearchVO searchVo, Model model) {
		logger.info("공지사항 목록 화면, 파라미터 searchVo={}", searchVo);
		searchVo.setSearchCondition("MbTitle");
		
		if(searchVo.getStartDay()==null || searchVo.getStartDay().isEmpty())
		{	
			Date today=new Date();
			Calendar cal=Calendar.getInstance();
			cal.add(Calendar.MONTH, -1);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String defStart=sdf.format(cal.getTime());
			String defEnd=sdf.format(today);

			searchVo.setStartDay(defStart);
			searchVo.setEndDay(defEnd);

			logger.info("현재일자 setting searchVo={}",searchVo);
		}
		
		//페이징 처리 로직 시작
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		
		List<NoticeVO> noticeList=noticeService.selectNoticeAll(searchVo);
		logger.info("공지사항 목록 조회결과 noticeList.size={}", noticeList.size());
		
		int totalRecord=noticeService.getTotalRecord(searchVo);
		logger.info("글목록 TotalRecord={}", totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "/notice/notice";
	}
	
	
	//공지사항 디테일	
	@RequestMapping("/noticeDetail.do")
	public String voc_detail(@RequestParam(defaultValue = "0") int mbNo,
			HttpSession session, HttpServletRequest request, Model model) {
		logger.info("noticeDetail 파라미터 mbNo={}", mbNo);
		
		if(mbNo==0) {
			model.addAttribute("msg", "잘못된 url!");
			model.addAttribute("url", "/notice/notice.do");
			return "/common/message";
		}
		
		NoticeVO vo=noticeService.selectByNo(mbNo);
		logger.info("noticeDetail 결과 vo={}",vo);
		
		//파일정보 처리
		/*
		String fileInfo=fileUploadUtil.getFileInfo(vo.getFOriginName(), vo.getFFileSize(), request);
		
		model.addAttribute("memVo", memVo);
		model.addAttribute("fileInfo", fileInfo);
		*/
		
		model.addAttribute("vo", vo);
		
		return "/notice/noticeDetail";
	}
	
	
	//조회수
	@RequestMapping("/updateCount")
	public String updateCount(@RequestParam(defaultValue = "0") int mbNo,Model model) {
		logger.info("조회수 증가, 파라미터 bNo={}",mbNo);
		
		if(mbNo==0) {
			model.addAttribute("msg","잘못된 url!");
			model.addAttribute("url","/notice/notice.do");
			return "/common/message";
		}
		
		int cnt=noticeService.updateCount(mbNo);
		logger.info("조회수 증가 결과, cnt={}", cnt);
		
		return "redirect:/notice/noticeDetail.do?mbNo="+mbNo;
	}
	
	
	//공지사항 등록
	@GetMapping("/noticeWrite.do")
	public void notice_get() {
		logger.info("공지사항 등록 화면");
	}
	
	@PostMapping("/noticeWrite.do")
	public String notice_post(@ModelAttribute NoticeVO vo,
			/* HttpSession session, */ HttpServletRequest request,Model model) 
	{	
		logger.info("공지사항 등록, 파라미터 vo={}", vo);
		//파일 업로드 처리
		String fileName="", originFileName="";
		String msg="글쓰기 실패!", url="/notice/noticeWrite.do";
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
		//String memId=(String) session.getAttribute("memId");
		//logger.info("memId={}", memId);
		//String memPwd=memberService.selectByMemId(memId).getMemPwd();
		//vo.setBId(memId);
		//vo.setBPwd(memPwd);
		vo.setFName(fileName);
		vo.setFOriginName(originFileName);
		vo.setFFileSize(fileSize);
		vo.setBtNo(1);

		logger.info("공지사항 조회 - 글쓰기 처리, 파라미터 vo={}", vo);
		int cnt=noticeService.insertNotice(vo);
		logger.info("글쓰기 처리 결과, cnt={}", cnt);
		msg="글쓰기 처리 성공";
		url="/notice/notice.do";
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);

		return "/common/message";
	}
	
	//공지사항 삭제
	@RequestMapping("/noticeDelList.do")
	public String deleteNotice(@ModelAttribute DateSearchVO searchVo, Model model) {
		logger.info("공지사항 목록 화면, 파라미터 searchVo={}", searchVo);
		searchVo.setSearchCondition("MbTitle");
		
		if(searchVo.getStartDay()==null || searchVo.getStartDay().isEmpty())
		{	
			Date today=new Date();
			Calendar cal=Calendar.getInstance();
			cal.add(Calendar.MONTH, -1);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String defStart=sdf.format(cal.getTime());
			String defEnd=sdf.format(today);

			searchVo.setStartDay(defStart);
			searchVo.setEndDay(defEnd);

			logger.info("현재일자 setting searchVo={}",searchVo);
		}
		
		//페이징 처리 로직 시작
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);
		
		List<NoticeVO> noticeList=noticeService.selectNoticeAll(searchVo);
		logger.info("공지사항 목록 조회결과 noticeList.size={}", noticeList.size());
		
		int totalRecord=noticeService.getTotalRecord(searchVo);
		logger.info("글목록 TotalRecord={}", totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("searchVo", searchVo);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "/notice/noticeDelList";
	}
	
	
	 @RequestMapping("/noticeDelete.do") 
	 public String deleteNotice2(@RequestParam int mbNo, Model model) { 
		 logger.info("글 삭제 처리 파라미터 mbNo={}",mbNo); 
		 int cnt = noticeService.deleteNotice(mbNo); 
		 String msg="글 삭제 처리 실패 하였습니다.",
		 url="/notice/noticeDelList.do"; 
		 
		 if(cnt>0) { 
			 msg="게시글이 삭제되었습니다.";
			 url="/notice/noticeDelList.do"; 
			 logger.info("글 삭제 처리 결과 cnt={}", cnt); 
			}
		 model.addAttribute("msg",msg); 
		 model.addAttribute("url",url); 
		 
		 return "/common/message"; 
	 }
	 
}
