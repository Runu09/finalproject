package com.onair.proj.admin.controller;

import java.util.List;

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

import com.onair.proj.admin.model.AdminService;
import com.onair.proj.admin.model.AdminVO;
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.voc.model.VocVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {
	private static final Logger logger
		=LoggerFactory.getLogger(AdminController.class);
	
	private final AdminService adminService;
	
	@RequestMapping("/adminMain")
	public String adminMain(@ModelAttribute MemberVO membervo , @ModelAttribute VocVO vocvo, Model model) {
		logger.info("관리자 메인화면");
		
		int cnt1=adminService.totalMember(membervo);
		logger.info("가입한 총 회원수={}", cnt1);
		
		int cnt2=adminService.totalboard3(vocvo);
		logger.info("고객의 소리 총 글갯수={}", cnt2);
		
		model.addAttribute("cnt1", cnt1);
		model.addAttribute("cnt2", cnt2);
		
		return "/admin/adminMain";
	}
	
	@GetMapping("/adminRegister")
	public void adminRegister_get() {
		logger.info("관리자 등록 화면");
		
	}
	
	@PostMapping("/adminRegister")
	public String adminRegister_post(@ModelAttribute AdminVO vo,
			Model model) {
		logger.info("관리자 등록 화면, 파라미터 vo={}",vo);
		
		int cnt= adminService.adminInsert(vo);
		logger.info("관리자 등록 결과, 파라미터 cnt=", cnt);
		
		String msg="관리자 등록 실패", url="/admin/adminRegister";
		if(cnt>0) {
			msg="관리자 등록 완료";
			url="/admin/adminLogin";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "/common/message";
	}
	
	@GetMapping("/adminLogin")
	public void adminLogin() {
		logger.info("관리자 로그인 화면");
	}
	
	@PostMapping("/adminLogin")
	public String adminLogin(@ModelAttribute AdminVO vo, 
			@RequestParam(required = false) String ckhSaveId,
			HttpServletRequest request, HttpServletResponse response,
			Model model) {
		logger.info("관리자 로그인 처리, 파라미터 vo={}, ckhSaveId={}",vo,ckhSaveId);
		
		int result=adminService.adminLogin(vo.getManId(), vo.getManPwd());
		logger.info("관리자 로그인 처리 결과 result={}",result);
		
		String msg="관리자 로그인 처리 실패", url="/admin/adminLogin";
		if(result==MemberService.LOGIN_OK) {
			AdminVO adminVo= adminService.selectByManId(vo.getManId());
			HttpSession session = request.getSession();
			session.setAttribute("manId", vo.getManId());
			session.setAttribute("manName", vo.getManName());
			
			Cookie ck = new Cookie("ck_manId", vo.getManId());
			ck.setPath("/");
			if(ckhSaveId!=null) {
				ck.setMaxAge(1000*24*60*60);
				response.addCookie(ck);
			}else {
				ck.setMaxAge(0);
				response.addCookie(ck);
			}
			msg= adminVo.getManName()+"님 로그인 되었습니다.";
			url= "/admin/adminMain";
			
		}else if(result==MemberService.DISAGREE_PWD) {
			msg="비밀번호가 일치하지 않습니다 다시 입력해주세요.";
		}else if(result==MemberService.NONE_USERID) {
			msg="해당 아이디가 존재하지 않습니다.";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "/common/message";
	}
	
	@RequestMapping("/adminLogout")
	public String logout(HttpSession session) {
		logger.info("관리자 로그아웃");
		
		session.removeAttribute("manId");
		session.removeAttribute("manName");
		
		return "redirect:/admin/adminLogin";
	}
	
	@RequestMapping("/allUser")
	public String allUser(@ModelAttribute SearchVO searchVo,
			Model model) {
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
		
		return "/admin/allUser";
	}
	
}
