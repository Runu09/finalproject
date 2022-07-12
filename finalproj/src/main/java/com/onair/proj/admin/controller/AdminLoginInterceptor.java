package com.onair.proj.admin.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class AdminLoginInterceptor extends HandlerInterceptorAdapter{
	private static final Logger logger
	=LoggerFactory.getLogger(AdminLoginInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		String manId =(String) session.getAttribute("manId");
		logger.info("preHandle(), manId={}", manId);
		
		if(manId==null || manId.isEmpty()) {			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('관리자 페이지 입니다.');");
			out.print("alert('먼저 로그인 하세요.');");
			out.print("location.href='"+request.getContextPath()
			+ "/admin/adminLogin';");			
			out.print("</script>");
			
			return false;
		}
		
		return true;
	}
}
