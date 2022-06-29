package com.onair.proj.note.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onair.proj.admin.model.AdminService;
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.note.model.NoteService;
import com.onair.proj.note.model.NoteVO;
import com.onair.proj.note.model.NotemanVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/note")
@RequiredArgsConstructor	
public class NoteController {
	private static final Logger logger
	= LoggerFactory.getLogger(NoteController.class);
	private final NoteService noteService;
	private final AdminService adminService;

	@RequestMapping("/write.do")
	public String note_write(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("전체 유저 조회 파라미터 searchVo={}", searchVo);

		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);

		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());

		List<MemberVO> alist = adminService.selectMemberAll(searchVo);
		logger.info("회원 정보 조회 결과 alist={}",alist);

		int totalRecord = adminService.selectMemberTotalRecord(searchVo);
		logger.info("회원 정보 조회 결과 totalRecord={}",totalRecord);
		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);

		return "/note/send";
	}

	@PostMapping("/send.do")
	public String note_send(@ModelAttribute NoteVO noteVo, @RequestParam String memId,HttpSession session, Model model) {
		logger.info("파라미터 memId={}", memId);
		logger.info("파라미터 noteVo={}", noteVo);
		String msg="쪽지 전송 실패", url="/note/write.do";

		String manId=(String)session.getAttribute("manId");
		int manNo=noteService.selectManNo(manId);
		logger.info("manNo={}", manNo);
		noteVo.setManNo(manNo);

		logger.info("세팅 후 파라미터 noteVo={}", noteVo);
		int cnt=noteService.insertNote(noteVo);



		NotemanVO notemanVo=new NotemanVO(); int
		memNo=noteService.selectMemNo(memId); 
		notemanVo.setMemNo(memNo);
		logger.info("세팅 후 파라미터 notemanVo={}", notemanVo);
		cnt=noteService.insertNoteman(notemanVo);


		if(cnt>0) {
			msg="쪽지 전송 성공";
		}

		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "/common/message";
	}
}