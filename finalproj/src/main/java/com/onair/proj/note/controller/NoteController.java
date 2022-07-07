package com.onair.proj.note.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.onair.proj.admin.model.AdminService;
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.note.model.NoteService;
import com.onair.proj.note.model.NoteVO;
import com.onair.proj.note.model.NotemanVO;
import com.onair.proj.note.model.NoteviewVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/note")
@RequiredArgsConstructor	
public class NoteController {
	private static final Logger logger
	= LoggerFactory.getLogger(NoteController.class);
	private final NoteService noteService;
	
	@RequestMapping("/showDetail.do")
	public void showDetail(@RequestParam String str, Model model) {
		model.addAttribute("str", str);
	}
	
	@GetMapping("/read.do")
	@ResponseBody
	public String read(@RequestParam(defaultValue = "0") int nmNo) {
		logger.info("읽음처리 파라미터 nmNo={}",nmNo);
		int cnt=noteService.read(nmNo);
		return Integer.toString(cnt);
	}
	
	@RequestMapping("/noteList.do")
	public String noteList(HttpSession session, Model model)
	{
		logger.info("쪽지함 화면");
		String memId=(String)session.getAttribute("memId");
		List<NoteviewVO> list=noteService.noteList(memId);
		
		logger.info("list.size()={}", list.size());
		
		int totalRecord=noteService.newNoteCount(memId);
				
		model.addAttribute("list",list);
		model.addAttribute("totalRecord", totalRecord);
		
		return "/note/noteList";
		}
	@RequestMapping("/write.do")
	public String note_write(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("전체 유저 조회 파라미터 searchVo={}", searchVo);

		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);

		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());

		List<MemberVO> alist = noteService.selectMemberIn(searchVo);
		logger.info("탈퇴 회원 제외한 회원 정보 조회 결과 alist={}",alist);

		int totalRecord = noteService.selectMemberInTotalRecord(searchVo);
		logger.info("탈퇴 회원 제외한 회원 정보 조회 결과 totalRecord={}",totalRecord);
		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);

		return "/note/send";
	}

	@PostMapping("/send.do")
	public String note_send(@RequestParam String memList, @ModelAttribute NoteVO noteVo, 
			HttpSession session, Model model) {
		/* @RequestParam String memId, */
		
		String data[]=memList.split(",");
		
		logger.info("파라미터 noteVo={}", noteVo);
		String msg="쪽지 전송 실패", url="/note/write.do";

		String manId=(String)session.getAttribute("manId");
		int manNo=noteService.selectManNo(manId);
		logger.info("manNo={}", manNo);
		noteVo.setManNo(manNo);

		logger.info("세팅 후 파라미터 noteVo={}", noteVo);
		int cnt=noteService.insertNote(noteVo);



		NotemanVO notemanVo=new NotemanVO(); 
		
		for(int i=0;i<data.length;i++) {
		int memNo=noteService.selectMemNo(data[i]); 
		notemanVo.setMemNo(memNo);
		logger.info("세팅 후 파라미터 notemanVo={}", notemanVo);
		cnt=noteService.insertNoteman(notemanVo);

		}
		if(cnt>0) {
			msg="쪽지 전송 성공";
		}

		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "/common/message";
	}
	@RequestMapping("/list.do")
	public String note_list(@ModelAttribute SearchVO searchVo, Model model) {
		
		logger.info("쪽지 관리 목록, 파라미터 searchVo={}", searchVo);
		
		//[1] PaginationInfo 생성
				PaginationInfo pagingInfo = new PaginationInfo();
				pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
				pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);
				pagingInfo.setCurrentPage(searchVo.getCurrentPage());
				
				//[2] searchVo에 페이징 처리 관련 변수의 값 셋팅
				searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
				searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);
				
		List<NoteviewVO> list=noteService.selectNoteView(searchVo);
		
		logger.info("list.size()={}", list.size());
		
		//totalRecord개수 구하기
				int totalRecord=noteService.getTotalRecord(searchVo);
				logger.info("쪽지 관리 목록 totalRecord={}", totalRecord);

				pagingInfo.setTotalRecord(totalRecord);
				
				
		model.addAttribute("noteList",list);
		model.addAttribute("pagingInfo", pagingInfo);
		return "/note/list";
		

	}

}