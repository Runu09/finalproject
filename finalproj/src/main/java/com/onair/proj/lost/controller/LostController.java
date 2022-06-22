package com.onair.proj.lost.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onair.proj.board.model.BoardService;
import com.onair.proj.board.model.BoardVO;
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.FileUploadUtil;
import com.onair.proj.member.model.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/lost")
@RequiredArgsConstructor
public class LostController {

	private static final Logger logger
	= LoggerFactory.getLogger(LostController.class);

	private final BoardService boardService;
	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;
	
	@RequestMapping("/detail.do")
	public void detail() {

	}

	@GetMapping("/write.do")
	public void lost_get() {
		logger.info("유실물 조회 - 글쓰기 화면");
	}

	@PostMapping("/write.do")
	public String lost_post(@ModelAttribute BoardVO vo, HttpSession session, HttpServletRequest request,Model model) 
	{	
		logger.info("유실물 조회 - 글쓰기 처리, 파라미터 vo={}", vo);
		//파일 업로드 처리
		String fileName="", originFileName="";
		long fileSize=0;
		try {
			List<Map<String, Object>> fileList
			=fileUploadUtil.fileUpload(request,	ConstUtil.UPLOAD_IMAGE_FLAG);

			for(Map<String, Object> fileMap : fileList) {
								originFileName=(String) fileMap.get("originalFileName");
				fileName=(String) fileMap.get("fileName");
				fileSize= (long) fileMap.get("fileSize");				
			}//for

			logger.info("파일 업로드 성공, fileName={}, fileSize={}", fileName,
					fileSize);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String memId=(String) session.getAttribute("memId");
		String memPwd=memberService.selectByMemId(memId).getMemPwd();
		vo.setBId(memId);
		vo.setBPwd(memPwd);
		vo.setFName(fileName);
		vo.setFOriginName(originFileName);
		vo.setFFileSize(fileSize);
		vo.setBtNo(2);	//유실물조회
		
		logger.info("==========세팅후\n 유실물 조회 - 글쓰기 처리, 파라미터 vo={}", vo);
		int cnt=boardService.insertBoard(vo);
		logger.info("글쓰기 처리 결과, cnt={}", cnt);

		return "redirect:/lost/list.do";
	}





	@RequestMapping("/list.do")
	public String lost_list() {
		return "/lost/list";
	}

}
