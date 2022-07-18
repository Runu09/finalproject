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
import com.onair.proj.board.model.BoardVO;
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.DateSearchVO;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.notice.model.NoticeVO;
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
	public String adminMain(@ModelAttribute MemberVO membervo , @ModelAttribute VocVO vocvo, @ModelAttribute BoardVO boardvo, @ModelAttribute NoticeVO noticevo, Model model) {
		logger.info("관리자 메인화면");
		
		int cnt=adminService.totalboard1(noticevo);
		logger.info("공지사항 총 글갯수={}", cnt);
		
		int cnt1=adminService.totalMember(membervo);
		logger.info("가입한 총 회원수={}", cnt1);
		
		int cnt2=adminService.totalboard3(vocvo);
		logger.info("고객의 소리 총 글갯수={}", cnt2);
		
		int cnt3=adminService.totalboard2(boardvo);
		logger.info("유실물 관리 총 글갯수={}", cnt3);
		
		//admin.xml int 넘겨줌
		int monthNotice=0;
		int[] monthNoticeCountArr = new int[13];
		
		for(int i=1;i<monthNoticeCountArr.length;i++) {
			monthNotice=adminService.monthSignMem(i);
			monthNoticeCountArr[i]=monthNotice;
		}
		logger.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>test={}", monthNoticeCountArr.length);
		
		//logger.info("월별 공지사항 글갯수={}", noticevo);
		
		int reservationCount=0;
		int[] reservationCountArr = new int[13];
		for(int j=1;j<reservationCountArr.length;j++) {
			reservationCount=adminService.reservationCount(j);
			reservationCountArr[j]=reservationCount;
		}
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("cnt1", cnt1);
		model.addAttribute("cnt2", cnt2);
		model.addAttribute("cnt3", cnt3);
		model.addAttribute("monthNoticeCountArr", monthNoticeCountArr);
		model.addAttribute("reservationCountArr", reservationCountArr);
		
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
			url="/admin/adminMain";
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
	public String allUser(@ModelAttribute DateSearchVO searchVo,
			Model model) {
		logger.info("전체 유저 조회 파라미터 searchVo={}", searchVo);
		searchVo.setSearchCondition("memName");
		
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
		model.addAttribute("searchVo", searchVo);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "/admin/allUser";
	}
	
	@RequestMapping("/delUser")
	public String delUser(@RequestParam String memId,
			Model model) {
		logger.info("회원탈퇴 처리 memId={}", memId);
		int cnt = adminService.adminMemberDelete(memId);
		String msg="회원 탈퇴 처리 실패 하였습니다.", url="/admin/allUser";
		if(cnt>0) {
			msg="회원 탈퇴 처리 하였습니다.";
			url="/admin/allUser";
			logger.info("회원탈퇴 처리 결과 cnt={}", cnt);
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "/common/message";
	}

	@RequestMapping("/adminAllUser")
	public String adminAllUser(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("관리자 조회 파라미터 searchVo", searchVo);
		
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);
		
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		List<AdminVO> alist= adminService.selectAllAdmin(searchVo);
		logger.info("관리자 정보 조회 결과 alist={}",alist);
		
		int totalRecord = adminService.selectAdminTotalRecord(searchVo);
		logger.info("회원 정보 조회 결과 totalRecord={}",totalRecord);
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("alist", alist);
		model.addAttribute("searchVo", searchVo);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "/admin/adminAllUser";
		
	}
	@RequestMapping("/delAdmin")
	public String delAdmin(@RequestParam String manId, Model model) {
		logger.info("관리자 탈퇴 처리 파라미터 manId={}",manId);
		int cnt = adminService.deleteAdmin(manId);
		String msg="관리자 탈퇴 처리 실패 하였습니다.", url="/admin/adminAllUser";
		if(cnt>0) {
			msg="관리자 탈퇴 처리 하였습니다.";
			url="/admin/adminAllUser";
			logger.info("관리자 탈퇴 처리 결과 cnt={}", cnt);
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "/common/message";
	}
	
	/*
	 * @GetMapping("/adminMypage") public String myPage() {
	 * logger.info("관리자 마이페이지"); return "/admin/adminMypage"; }
	 */
	
	@GetMapping("/adminMypage")
	public String myPage_post(HttpSession session,
			Model model) {
		String manId=(String) session.getAttribute("manId");
		String manName=(String) session.getAttribute("manName");
		logger.info("관리자 마이페이지 조회 manId={}, manName={}", manId,manName);
		
		AdminVO vo= adminService.selectByManId(manId);
		logger.info("관리자 마이페이지 vo={}", vo);
		
		model.addAttribute("vo", vo);
		
		return "/admin/adminMypage";
		
	}
	
	@RequestMapping("/chkPwd")
	public String chkPwd(@ModelAttribute AdminVO vo) {
		int cnt = adminService.chkPwd(vo.getManId());
		logger.info("비밀번호 체크 파라미터 vo={}", vo);
		
		return "redirect:/admin/adminMypage";
	}
	
	@PostMapping("/editPwd")
	public String editPwd(@ModelAttribute AdminVO vo,
			HttpSession session, @RequestParam String nPwd,
			Model model) {
		String manId=(String) session.getAttribute("manId");
		vo.setManId(manId);
		
		logger.info("관리자 마이페이지 기존 비밀번호 확인 vo={}", vo.getManPwd());
		int result = adminService.adminLogin(vo.getManId(), vo.getManPwd());
		
		logger.info("관리자 마이페이지 기존 비밀번호 체크 결과 result={}", result);
		String msg= "비밀번호 체크 실패", url="/admin/adminMypage";
		
		if(result==MemberService.LOGIN_OK) {
			int cnt= adminService.editPwd(vo.getManId(), nPwd);
			
			if(cnt>0) {
				msg="비밀번호 변경 완료";
			}
		}else if(result== MemberService.DISAGREE_PWD) {
			msg="입력하신 비밀번호가 일치하지 않습니다.";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
	
	
	
}
