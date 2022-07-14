package com.onair.proj.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomErrorController implements ErrorController{
	@RequestMapping("/error")
	private String error(HttpServletRequest request, Model model) {
		Object status = request.getAttribute("javax.servlet.error.status_code");
		if(status.equals(HttpStatus.NOT_FOUND.value())) 
			return "error/404";
		else
			return "error/500";
	}
}
