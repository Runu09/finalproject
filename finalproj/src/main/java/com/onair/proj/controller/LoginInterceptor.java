package com.onair.proj.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class LoginInterceptor extends HandlerInterceptorAdapter{

	private static final Logger logger
	=LoggerFactory.getLogger(LoginInterceptor.class);
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		String memId = (String)request.getSession().getAttribute("memId");
		
		logger.info("memId={}", memId);
		
		//로그인 안된 경우
		if(memId==null|| memId.isEmpty()) {
			request.setAttribute("msg", "먼저 로그인하세요");
			request.setAttribute("url", "/login/login.do");
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print("<script>");
			out.print("alert('먼저 로그인하세요');");
			out.print("location.href='"+request.getContextPath()
			+"/login/login.do';");
			
			out.print("</script>");
			return false;
		}
		return true;	//다음 컨트롤러가 수행됨
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("postHandle() 실행! - 컨트롤러 실행 후");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	
		logger.info("afterCompletion() 실행! - 뷰 생성 후");
	}

	
}
