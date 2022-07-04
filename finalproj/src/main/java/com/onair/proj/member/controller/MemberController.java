package com.onair.proj.member.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.FileUploadUtil;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {
	private static final Logger logger
	=LoggerFactory.getLogger(MemberController.class);

	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;
	
	@GetMapping("/agreement.do")
	public void agreement_get() {
		logger.info("회원 약관 화면");
	
	}
	
	@GetMapping("/register.do")
	public String register_get() {
		logger.info("회원가입 화면");
		return "/member/register";

	}

	@PostMapping("/register.do")
	public String register_post(@ModelAttribute MemberVO vo, 
			@RequestParam String mEmail3,
			Model model) {
		logger.info("회원가입 처리, 파라미터 vo={}, mEmail3={}", vo,mEmail3);
		

		if(vo.getMEmail2().equals("etc")) {
			vo.setMEmail2(mEmail3);
		}
		
		int cnt=memberService.memberInsert(vo);
		
		logger.info("회원가입 결과, cnt={}", cnt);

		String msg="회원가입 실패", url="/member/register.do";
		
		if(cnt>0) {
			msg="회원가입되었습니다.";
			url="/login/login.do";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}

	@RequestMapping("/dupId.do")
	@ResponseBody
	public boolean dupId(@RequestParam String memId) {
		logger.info("아이디 중복확인, 파라미터 memId={}", memId);

		int result=memberService.duplicateId(memId);

		logger.info("아이디 중복확인 결과, result={}", result);

		boolean bool=false;	
		if(result==MemberService.USABLE_ID) {
			bool=true;		//사용가능
		}else if(result==MemberService.UNUSABLE_ID) {
			bool=false;		//사용불가
		}
		return bool;
	}
	

	//회원정보수정
	@GetMapping("/editMem.do")
	public String editMem_get(HttpSession session, Model model) {
		String memId = (String)session.getAttribute("memId");
		logger.info("회원 정보 수정 화면, 파라미터 memId={}", memId);
		
		MemberVO vo = memberService.selectByMemId(memId);
		logger.info("회원 정보 조회 결과 vo={}", vo);
		
		model.addAttribute("vo" , vo);
		
		return "/member/editMem";
	}
	
	

	@PostMapping("/editMem.do")
	public String editMem_post(@ModelAttribute MemberVO vo,
			@RequestParam String mEmail3, HttpSession session,
			HttpServletRequest request, Model model) {
		
		String memId = (String)session.getAttribute("memId");
		vo.setMemId(memId);
		logger.info("회원정보수정, MemberVO={}, mEmail3={}", vo, mEmail3);
		
		//hp처리
		String mTel1=vo.getMTel1(); 
		String mTel2=vo.getMTel2(); 
		String mTel3=vo.getMTel3();
		
		if(mTel2==null || vo.getMTel2().isEmpty() 
				|| mTel3==null || vo.getMTel3().isEmpty()) {
			mTel1="";
			mTel2="";
			mTel3="";
		}
		vo.setMTel1(mTel1);
		vo.setMTel2(mTel2);
		vo.setMTel3(mTel3);
		
		//email처리
		String mEmail1=vo.getMEmail1();		
		String mEmail2=vo.getMEmail2();
		
		if(mEmail1==null || mEmail1.isEmpty()) {
			mEmail1="";
			mEmail2="";
		}else {
			if(mEmail2.equals("etc")) {
				mEmail2=mEmail3;
			}
		}
		vo.setMEmail1(mEmail1);
		vo.setMEmail2(mEmail2);
		
		//파일 업로드처리
		String fileName="";
		
		List<Map<String, Object>> fileList;
		
		try {
			fileList
			= fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_FILE_FLAG);
			
			for(Map<String, Object> fileMap : fileList) {
				fileName=(String)fileMap.get("fileName");
			}
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		vo.setMPic(fileName);
		
		//비밀번호 체크
		String msg="비밀번호 체크 실패", url="/member/editMem.do";
		int result=memberService.checkLogin(vo.getMemId(), vo.getMemPwd());
		logger.info("비밀번호 체크 결과, result={}", result);
		
		if(result==memberService.LOGIN_OK) {
			int cnt=memberService.memberUpdate(vo);
			logger.info("회원정보 수정 결과, cnt={}", cnt);
			
			if(cnt>0) {
				msg="회원정보를 수정하였습니다.";
			}else {
				msg="회원정보 수정을 실패하였습니다.";
			}
		}else if(result==memberService.DISAGREE_PWD) {
			msg="비밀번호가 일치하지 않습니다";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}

	/*
	@PostMapping("/editMem.do")
	public String editMem_post(@ModelAttribute MemberVO vo,
			@RequestParam String mEmail3, HttpSession session,
			Model model) {
		String memId = (String)session.getAttribute("memId");
		vo.setMemId(memId);
		logger.info("회원정보수정, MemberVO={}, mEmail3={}", vo, mEmail3);
		
		//hp처리
		String mTel1=vo.getMTel1(); 
		String mTel2=vo.getMTel2(); 
		String mTel3=vo.getMTel3();
		
		if(mTel2==null || vo.getMTel2().isEmpty() 
				|| mTel3==null || vo.getMTel3().isEmpty()) {
			mTel1="";
			mTel2="";
			mTel3="";
		}
		vo.setMTel1(mTel1);
		vo.setMTel2(mTel2);
		vo.setMTel3(mTel3);
		
		//email처리
		String mEmail1=vo.getMEmail1();		
		String mEmail2=vo.getMEmail2();
		
		if(mEmail1==null || mEmail1.isEmpty()) {
			mEmail1="";
			mEmail2="";
		}else {
			if(mEmail2.equals("etc")) {
				mEmail2=mEmail3;
			}
		}
		vo.setMEmail1(mEmail1);
		vo.setMEmail2(mEmail2);
		
		//비밀번호 체크
		String msg="비밀번호 체크 실패", url="/member/editMem.do";
		int result=memberService.checkLogin(vo.getMemId(), vo.getMemPwd());
		logger.info("비밀번호 체크 결과, result={}", result);
		
		if(result==memberService.LOGIN_OK) {
			int cnt=memberService.memberUpdate(vo);
			logger.info("회원정보 수정 결과, cnt={}", cnt);
			
			if(cnt>0) {
				msg="회원정보를 수정하였습니다.";
			}else {
				msg="회원정보 수정을 실패하였습니다.";
			}
		}else if(result==memberService.DISAGREE_PWD) {
			msg="비밀번호가 일치하지 않습니다";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
*/
	//회원탈퇴
	@GetMapping("/outMem.do")
	public String outMem_get() {
		logger.info("회원탈퇴 화면");
		return "/member/outMem";
	}

	@PostMapping("/outMem.do")
	public String outMem_post(@RequestParam String memPwd,
			HttpSession session, HttpServletResponse response,
			Model model) {
		String memId = (String)session.getAttribute("memId");
		logger.info("회원탈퇴 처리, 파라미터 memId={}, memPwd={}", memId, memPwd);
		
		int result=memberService.checkLogin(memId, memPwd);
		logger.info("회원탈퇴 처리, 비밀번호 체크 결과 result={}", result);
		
		String msg="비밀번호 체크 실패", url="/member/outMem.do";
		if(result==memberService.LOGIN_OK) {
			int cnt=memberService.memberDelete(memId);
			if(cnt>0) {
				msg="회원탈퇴 처리되었습니다.";
				url="/main/main.do";
				
				//세션정보삭제
				session.invalidate();
				
				//쿠키삭제
				Cookie ck = new Cookie("ckMemId", memId);
				ck.setPath("/");
				ck.setMaxAge(0);
				response.addCookie(ck);
			}else {
				msg="회원탈퇴 실패하였습니다";
			}
		}else if(result==memberService.DISAGREE_PWD) {
			msg="비밀번호가 일치하지 않습니다.";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
		
	}
	
	//비번변경
	@GetMapping("/editPwd.do")
	public String editPwd_get() {
		logger.info("비밀번호변경 화면");
		return "/member/editPwd";
	}
	
	@PostMapping("/editPwd.do")
	public String editPwd_post(@ModelAttribute MemberVO vo, 
			HttpSession session, @RequestParam String newPwd,
			Model model) {
		String memId=(String)session.getAttribute("memId");
		vo.setMemId(memId);
		
		logger.info("비밀번호변경 처리, MemberVo={}", vo);
		
		int result=memberService.checkLogin(vo.getMemId(), vo.getMemPwd());
		logger.info("비밀번호변경 처리, 현재 사용중인 비밀번호 체크 결과 result={}", result);
		
		//비밀번호 체크
		String msg="비밀번호 체크 실패", url="/member/editPwd.do";
		if(result==memberService.LOGIN_OK) {
			int cnt=memberService.pwdChange(vo.getMemId(), newPwd);
			
			if(cnt>0) {
				msg="비밀번호를 변경하였습니다.";
			}else {
				msg="비밀번호 변경을 실패하였습니다.";
			}
		}else if(result==memberService.DISAGREE_PWD) {
			msg="입력하신 현재 비밀번호가 일치하지 않습니다.";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
	@GetMapping("findId.do")
	public void findid_get() {
		logger.info("아이디 찾기 화면");
	}
	@GetMapping("findPwd.do")
	public void findpwd_get() {
		logger.info("비밀번호 찾기 화면");
	}
	
	@ResponseBody
	@RequestMapping("infoId.do")
	public String infoid(@RequestParam String name, @RequestParam String email) {
		logger.info("아이디 찾기 처리 파라미터 name={}, email={}", name, email);
		
		String result=memberService.findId(name,email);
		logger.info("아이디 찾기, 결과 result={}", result);
		return result;
	}
	@PostMapping("newPwd.do")
	public void newPwd_post(@RequestParam String pid, Model model) {
		//파라미터 아이디
		logger.info("새로운 비밀번호 설정 화면 파라미터 pid={}",pid);
		model.addAttribute("memId", pid);
		
		
	}
	@PostMapping("changePwd.do")
	@ResponseBody
	public String newPwd_post(@ModelAttribute MemberVO vo) {
		logger.info("새로운 비밀번호 변경 처리, MemberVo={}", vo);
		
		String msg="비밀번호 변경 실패";
		
		logger.info("memId={}, memPwd={}", vo.getMemId(), vo.getMemPwd());
		
		int cnt=memberService.pwdChange(vo.getMemId(), vo.getMemPwd());
		logger.info("pwdChange() 결과 cnt={}",cnt);
		
		
		return Integer.toString(cnt);
	
	}
}








