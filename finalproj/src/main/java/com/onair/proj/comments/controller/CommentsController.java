package com.onair.proj.comments.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onair.proj.comments.model.CommentsService;
import com.onair.proj.comments.model.CommentsVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class CommentsController {
	private static final Logger logger
		=LoggerFactory.getLogger(CommentsController.class);
	
	private final CommentsService commentsService;
	
	//댓글등록
	@PostMapping("/comments_write")
	public String replyWrite_post(HttpSession session,CommentsVO vo,Model model) {
		logger.info("댓글등록 파라미터, vo={}", vo);
		
		//id 안받았으면 session에서 id 받아서 값 설정하기
		String memId=(String)session.getAttribute("memId");
		vo.setCId(memId);
		
		int cnt=commentsService.insertComment(vo);
		logger.info("댓글등록 처리결과 cnt={}", cnt);
		
		return "redirect:/voc/voc_detail?bNo="+vo.getBNo();
	}
	
	//댓글수정
	public String replyUpdate_post(@ModelAttribute CommentsVO vo) {
		logger.info("댓글수정 파라미터, vo={}", vo);
		
		int cnt=commentsService.updateComment(vo);
		logger.info("댓글수정 처리결과 cnt={}", cnt);
		
		return "";
	}
	
	//댓글삭제
	@RequestMapping("/reply_delete")
	public String replyDelete(@RequestParam(defaultValue = "0") int cNo,@RequestParam(defaultValue = "0") int bNo) {
		logger.info("댓글 삭제처리, 파라미터 cNo={},bNo={}",cNo,bNo);
		int cnt=commentsService.deleteReply(cNo);
		
		logger.info("댓글 삭제처리 결과, cnt={}", cnt);
		
		return "redirect:/voc/voc_detail?bNo="+bNo;
	}
}
