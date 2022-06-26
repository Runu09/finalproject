package com.onair.proj.voccomments.controller;

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
import com.onair.proj.voccomments.model.VocCommentsService;
import com.onair.proj.voccomments.model.VocCommentsVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/voc")
public class VocCommentsController {
	private static final Logger logger
		=LoggerFactory.getLogger(VocCommentsController.class);
	
	private final VocCommentsService voccommentsService;
	
	//댓글등록
	@PostMapping("/comments_write")
	public String replyWrite_post(HttpSession session,VocCommentsVO vo,Model model) {
		logger.info("댓글등록 파라미터, vo={}", vo);
		
		//id 안받았으면 session에서 id 받아서 값 설정하기
		String memId=(String)session.getAttribute("memId");
		vo.setCId(memId);
		
		int cnt=voccommentsService.insertComment(vo);
		logger.info("댓글등록 처리결과 cnt={}", cnt);
		
		return "redirect:/voc/voc_detail?bNo="+vo.getBNo();
	}
	
	//댓글수정 위한 파라미터 바꾸기
	@RequestMapping("/updateReply")
	public String replyUpdate_post(@RequestParam(defaultValue = "0")int cNo) {
		logger.info("댓글수정 텍스트 바뀌기 파라미터, cNo={}", cNo);
		VocCommentsVO vo=voccommentsService.selectByCNo(cNo);
		logger.info("댓글수정 vo{}", vo);
		
		voccommentsService.updateCommentDel(cNo);
		logger.info("댓글수정된 vo", vo);
		
		return "redirect:/voc/voc_detail?bNo="+vo.getBNo();
	}
	
	//댓글수정
	@RequestMapping("/vocReplyEdit")
	public String replyEdit(@ModelAttribute VocCommentsVO vo, Model model) {
		logger.info("수정할 댓글 vo={}", vo);
		
		int cnt=voccommentsService.updateComment(vo);
		logger.info("댓글수정 결과 cnt={}",cnt);
		
		return "redirect:/voc/voc_detail?bNo="+vo.getBNo();
	}
	
	//댓글삭제
	@RequestMapping("/reply_delete")
	public String replyDelete(@RequestParam(defaultValue = "0") int cNo,@RequestParam(defaultValue = "0") int bNo) {
		logger.info("댓글 삭제처리, 파라미터 cNo={},bNo={}",cNo,bNo);
		int cnt=voccommentsService.deleteReply(cNo);
		
		logger.info("댓글 삭제처리 결과, cnt={}", cnt);
		
		return "redirect:/voc/voc_detail?bNo="+bNo;
	}
	
	//댓글등록처리
	@RequestMapping("/comments_reply")
	public String comments_reply(HttpSession session,VocCommentsVO vo,Model model) {
		logger.info("대댓글등록 파라미터, vo={}", vo);
		
		//id 안받았으면 session에서 id 받아서 값 설정하기
		String memId=(String)session.getAttribute("memId");
		vo.setCId(memId);
		
		int update=voccommentsService.updatereComment(vo);
		logger.info("대댓글처리 전 댓글 로직 업데이트 결과, update={}", update);
		
		int cnt=voccommentsService.insertreComment(vo);
		logger.info("대댓글등록 처리결과 cnt={}", cnt);
		
		return "redirect:/voc/voc_detail?bNo="+vo.getBNo();
	}
	
}
