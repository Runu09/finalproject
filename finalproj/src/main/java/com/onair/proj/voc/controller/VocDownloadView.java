package com.onair.proj.voc.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

@Component
public class VocDownloadView extends AbstractView{
	private static final Logger logger
	=LoggerFactory.getLogger(VocDownloadView.class);

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, 
			HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		File file = (File) model.get("file"); //download에서 넘어왔어
		if(file==null || !file.exists() || !file.canRead()) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print(
					"<script>alert('파일이 존재하지 않거나 손상되었습니다.');history.back();</script>");

			return;
		}
		int a=file.getName().lastIndexOf("_");
		int b=file.getName().lastIndexOf(".");
		String fileName=file.getName().substring(0, a)+file.getName().substring(b);
		logger.info("fileName={}", fileName);

		fileName=new String(fileName.getBytes("euc-kr"),
				"8859_1");
		
		response.setContentType("application/octet-stream");
		response.setHeader("Content-disposition", "attachment;fileName="
				+fileName);

		OutputStream os = response.getOutputStream();
		FileInputStream fis=null;
		try {
			fis=new FileInputStream(file);
			FileCopyUtils.copy(fis, os);
		}finally {
			if(fis!=null) fis.close();
		}
	}
}
