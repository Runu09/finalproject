package com.onair.proj.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.onair.proj.admin.controller.AdminLoginInterceptor;
import com.onair.proj.controller.LoginInterceptor;

@Configuration
public class MvcConfiguration implements WebMvcConfigurer{

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new LoginInterceptor())
		.addPathPatterns("/lost/write.do", "/lost/cmtWrite.do", "/lost/replyWrite.do",
				"/member/editMem.do","/member/editPwd.do","/member/outMem.do",
				"/mypage/**", "/booking/flight-booking.do", "/booking/flight-booking-payment.do", "flight-booking-success.do",
				"/voc/voc_write","/voc/voc_mylist","/voc/comments_write","/voc/comments_reply");

		
		 registry.addInterceptor(new AdminLoginInterceptor())
		 //.excludePathPatterns("/admin/adminLogin")
		 .addPathPatterns("/admin/adminMain", "/admin/adminAllUser","/admin/adminRegister",
				 "/admin/adminMypage");
		 
		
		
	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver 
			= new CommonsMultipartResolver();
		multipartResolver.setDefaultEncoding("UTF-8"); // 파일 인코딩 설정
		multipartResolver.setMaxUploadSizePerFile(5 * 1024 * 1024); // 파일당 업로드 크기 제한 (5MB)
		return multipartResolver;
	}
	
}
