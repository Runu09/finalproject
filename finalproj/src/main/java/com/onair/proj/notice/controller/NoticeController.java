package com.onair.proj.notice.controller;

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
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.DateSearchVO;
import com.onair.proj.common.FileUploadUtil;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.member.model.MemberService;
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
	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;
	
	//공지사항 리스트
	@RequestMapping("/notice.do")
	public String notice(@ModelAttribute DateSearchVO searchVo, HttpSession session, Model model) {
		logger.info("공지사항 목록 화면, 파라미터 searchVo={}", searchVo);
		searchVo.setSearchCondition("BTitle");
		
		//검색 매퍼위한 userid세팅
		String userId=(String)session.getAttribute("memId");
		logger.info("userId={}",userId);
		searchVo.setBId(userId);
		
		//조회하기 버튼 안눌러도 특정 일자 사이 글 목록 보여주기
		if(searchVo.getStartDay()==null || searchVo.getStartDay().isEmpty()) {
			Date date = new Date(2022-1900, 0, 1);
			Date today = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String str = sdf.format(date);
			String str2 = sdf.format(today);
			searchVo.setStartDay(str);
			searchVo.setEndDay(str2);
			
			logger.info("현재 셋팅된 searchVo={}", searchVo);
		}
		logger.info("현재 셋팅된 searchVo={}", searchVo);
		
		//페이징 처리 로직 시작
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		
		List<NoticeVO> noticeList=noticeService.selectNoticeAll();
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
	public String noticeDetail(@RequestParam(defaultValue = "0") int bNo, Model model) {
		logger.info("공지사항 디테일 조회");
		NoticeVO vo=noticeService.selectByNo(bNo);
		logger.info("공지사항 상세 조회 결과 vo={}", vo);
		
		model.addAttribute("vo", vo);
		
		return "/notice/noticeDetail";
	}
	
	
	//조회수
	@RequestMapping("/updateCount")
	public String updateCount(@RequestParam(defaultValue = "0") int bNo,Model model) {
		logger.info("조회수 증가, 파라미터 bNo={}",bNo);
		
		if(bNo==0) {
			model.addAttribute("msg","잘못된 url!");
			model.addAttribute("url","/voc/voc_list");
			return "/common/message";
		}
		
		int cnt=noticeService.updateCount(bNo);
		logger.info("조회수 증가 결과, cnt={}", cnt);
		
		return "redirect:/notice/noticeDetail?bNo="+bNo;
	}
	
	
	//공지사항 등록
	@GetMapping("/noticeWrite.do")
	public void lost_get() {
		logger.info("공지사항 등록 화면");
	}
	
	@PostMapping("/noticeWrite.do")
	public String lost_post(@ModelAttribute NoticeVO vo, HttpSession session, HttpServletRequest request,Model model) 
	{	
		logger.info("공지사항 등록, 파라미터 vo={}", vo);
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
		logger.info("memId={}", memId);
		String memPwd=memberService.selectByMemId(memId).getMemPwd();
		vo.setBId(memId);
		vo.setBPwd(memPwd);
		vo.setFName(fileName);
		vo.setFOriginName(originFileName);
		vo.setFFileSize(fileSize);
		vo.setBtNo(1);

		logger.info("공지사항 조회 - 글쓰기 처리, 파라미터 vo={}", vo);
		int cnt=noticeService.insertNotice(vo);
		logger.info("글쓰기 처리 결과, cnt={}", cnt);

		return "redirect:/notice/noticeWrite.do";
	}
}
