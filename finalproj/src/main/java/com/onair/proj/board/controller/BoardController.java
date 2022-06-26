package com.onair.proj.board.controller;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.onair.proj.board.model.BoardService;
import com.onair.proj.board.model.BoardVO;
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.FileUploadUtil;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.voc.controller.VoCController;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/파일명")
public class BoardController {
	private static final Logger logger
	=LoggerFactory.getLogger(VoCController.class);

	private final BoardService boardService;
	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;

	//안내화면
	@RequestMapping("/메인jsp")
	public String BoardMain() {
		logger.info("~~~ 메인화면");
		return "메인jsp";
	}

	//글등록
	@GetMapping("/등록jsp")
	public String BoardWrite_get(HttpSession session,Model model) {
		logger.info("~~~~ 등록하기 화면");
		String memId=(String)session.getAttribute("memId");
		BoardVO boardVo = new BoardVO();
		boardVo.setBId(memId);

		model.addAttribute("boardVo", boardVo);

		return "등록jsp";
	}

	@PostMapping("/등록jsp")
	public String BoardWrite_post(@ModelAttribute BoardVO vo, HttpServletRequest request,Model model) {
		logger.info("~~~~~~ 글등록 처리, 파라미터 vo={}", vo);

		//파일 업로드 처리
		String fileName="", originFileName="";
		long fileSize=0;
		try {
			List<Map<String, Object>> fileList
			=fileUploadUtil.fileUpload(request, 
					ConstUtil.UPLOAD_FILE_FLAG);
			logger.info("fileList.size()={}",fileList.size());
			for(Map<String, Object> fileMap : fileList) {
				//다중 파일 업로드 처리 해야 함!

				originFileName=(String) fileMap.get("originalFileName");
				fileName=(String) fileMap.get("fileName");
				fileSize= (long) fileMap.get("fileSize");				
			}//for

			logger.info("파일 업로드 성공, fileName={}, fileSize={}", fileName,
					fileSize);
		} catch (Exception e) {
			e.printStackTrace();
		}

		vo.setFName(fileName);
		vo.setFOriginName(originFileName);
		vo.setFFileSize(fileSize);

		int cnt=boardService.insertBoard(vo);
		logger.info("글등록 처리 결과, cnt={}", cnt);

		return "보낼곳jsp";
	}

	@RequestMapping("/리스트jsp")
	public String BoardList_get(Model model) {
		logger.info("~~~ 리스트 화면");

		List<BoardVO> list=boardService.selectAll();
		logger.info("~~~~~ 리스트 조회결과 list.size={}", list.size());

		model.addAttribute("list", list);

		return "리스트jsp";
	}

	@RequestMapping("/updateCount")
	public String updateCount(@RequestParam(defaultValue = "0") int bNo,Model model) {
		logger.info("조회수 증가, 파라미터 bNo={}",bNo);

		if(bNo==0) {
			model.addAttribute("msg","잘못된 url!");
			model.addAttribute("url","/voc/voc_list");
			return "/common/message";
		}

		int cnt=boardService.updateCount(bNo);
		logger.info("조회수 증가 결과, cnt={}", cnt);

		return "redirect:디테일jsp경로?bNo="+bNo;
	}

	@RequestMapping("디테일jsp")
	public String board_detail(@RequestParam(defaultValue = "0") int bNo,Model model) {
		logger.info("상세보기 파라미터 bNo={}", bNo);

		if(bNo==0) {
			model.addAttribute("msg", "잘못된 url!");
			model.addAttribute("url", "/voc/voc_list");
			return "/common/message";
		}

		BoardVO vo=boardService.selectByNo(bNo);
		logger.info("상세보기 결과 vo={}",vo);

		model.addAttribute("vo", vo);

		return "/디테일jsp경로";
	}
	
	@RequestMapping("/customer/notice.do")
	public String notice(Model model) {
		logger.info("공지사항 목록 화면");

		List<BoardVO> noticeList=boardService.selectNoticeAll();
		logger.info("공지사항 목록 조회결과 noticeList.size={}", noticeList.size());

		model.addAttribute("noticeList", noticeList);

		return "/customer/notice";
	}
}
