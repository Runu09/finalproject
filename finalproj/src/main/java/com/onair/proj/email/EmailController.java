package com.onair.proj.email;

import java.util.Random;

import javax.mail.MessagingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/email")
public class EmailController {

	private static final Logger logger
	=LoggerFactory.getLogger(EmailController.class);

	private final EmailSender emailSender;
	private final MemberService memberService;
	
	@RequestMapping("/sendEmail.do")
	@ResponseBody
	public String sendEmail(@RequestParam String memId, @RequestParam String email, Model model) {
		logger.info("이메일 발송 처리 페이지, 파라미터 memId={}, email={}",memId, email);
		Random rd=new Random();
		int auth=rd.nextInt(900000)+100000;
	
		MemberVO vo=memberService.selectByMemId(memId);
		
		if(vo==null) {
			return null;
		}
		String dbEmail=vo.getMEmail1()+"@"+vo.getMEmail2();
		String receiver=dbEmail;
		String subject="요청하신 인증번호를 알려드립니다.";
		String content="인증번호 : "+auth;
		String sender="ezonair04@naver.com";//보내는 사람의 이메일 주소

		try {
			if(email.equals(dbEmail)) {
			emailSender.sendEmail(subject, content, receiver, sender);
			logger.info("이메일 발송 성공");
			}
			else {
				logger.info("이메일 발송 안함");
			}
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.info("이메일 발송 실패! : "+e.getMessage());
		}
	
		
		return Integer.toString(auth);
	}


}
