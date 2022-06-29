package com.onair.proj.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onair.proj.admin.model.AdminService;
import com.onair.proj.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ExcelController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(ExcelController.class);
	
	private final AdminService adminService;
	
	@RequestMapping("/excelDown")
	public void ExcelDown(@ModelAttribute MemberVO memberVo, 
			HttpServletResponse response,
			HttpServletRequest request) throws IOException {
		/*logger.info("Excel 다운로드=memberVo={}, response={}", memberVo, response);
		adminService.getExcelDown(memberVo, response);
		List<MemberVO> list = adminDao.getExcelDown(memberVo);
		for(MemberVO vo : list) {
			System.out.println(vo);
		}*/
		
		List<MemberVO> alist = adminService.getExcelDown(memberVo);
		
		//try {
			Workbook workbook = new HSSFWorkbook();
			
			Sheet sheet = workbook.createSheet("유저목록");
			
			Row row = null;
			Cell cell= null;
			int rowNo = 0;
			int cellNo = 0;
			
			CellStyle headStyle = workbook.createCellStyle();
			
			headStyle.setBorderTop(BorderStyle.THIN);
			headStyle.setBorderBottom(BorderStyle.THIN);
			headStyle.setBorderRight(BorderStyle.THIN);
			headStyle.setBorderLeft(BorderStyle.THIN);
			sheet.setColumnWidth(0, 1200);
			sheet.setColumnWidth(3, 4200);
			sheet.setColumnWidth(5, 6600);
			sheet.setColumnWidth(6, 15900);
			
			headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());
			headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
			
			headStyle.setAlignment(HorizontalAlignment.CENTER);
			
			CellStyle bodyStyle = workbook.createCellStyle();
			bodyStyle.setBorderTop(BorderStyle.THIN);
			bodyStyle.setBorderBottom(BorderStyle.THIN);
			bodyStyle.setBorderRight(BorderStyle.THIN);
			bodyStyle.setBorderLeft(BorderStyle.THIN);

			String[] headerArray = {"번호","유저아이디","이름","전화번호","생년월일","Email","주소","마일리지"};
			row = sheet.createRow(rowNo++);
			for(int i=0; i<headerArray.length; i++) {
				cell = row.createCell(i);
				cell.setCellStyle(headStyle);
				cell.setCellValue(headerArray[i]);
			}
		
			for(MemberVO vo : alist) {
				row = sheet.createRow(rowNo++);
				cell = row.createCell(cellNo++);
			//for(int i=0; i<alist.size(); i++) {
				//row= sheet.createRow(i+1);
				
				//MemberVO vo= alist.get(i);
			
				row.createCell(0).setCellValue(vo.getMemNo());
				cell = row.createCell(cellNo++);
	            row.createCell(1).setCellValue(vo.getMemId());
	            cell = row.createCell(cellNo++);
	            row.createCell(2).setCellValue(vo.getMemName());
	            cell = row.createCell(cellNo++);
	            row.createCell(3).setCellValue(vo.getMTel1()+"-"+vo.getMTel2()+"-"+vo.getMTel3());
	            cell = row.createCell(cellNo++);
	            row.createCell(4).setCellValue(vo.getMBirthday());
	            cell = row.createCell(cellNo++);
	            row.createCell(5).setCellValue(vo.getMEmail1()+"@"+vo.getMEmail2());
	            cell = row.createCell(cellNo++);
	            row.createCell(6).setCellValue(vo.getMAdd1()+" "+vo.getMAdd2());
	            cell = row.createCell(cellNo++);
	            row.createCell(7).setCellValue(vo.getMMileage());
	            cell = row.createCell(cellNo++);
	            cellNo=0;
			}
				/*
				cell = row.createCell(0);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(vo.getMemNo());
				
				cell = row.createCell(1);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(vo.getMemId());
				
				cell = row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(vo.getMemName());
				
				cell = row.createCell(3);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(vo.getMTel1()+vo.getMTel2()+vo.getMTel3());
				
				cell = row.createCell(4);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(vo.getMBirthday());
				
				cell = row.createCell(5);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(vo.getMEmail1()+"@"+vo.getMEmail2());
				
				cell = row.createCell(6);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(vo.getMAdd1()+vo.getMAdd2());
				
				cell = row.createCell(7);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(vo.getMMileage());
				*/
				response.setContentType("ms-vnd/excel");
				//response.setHeader("Content-Disposition", "attachment;filename=test.xls");
				response.setHeader("Content-Disposition", "attachment; filename=" + java.net.URLEncoder.encode("유저목록관리.xls", "UTF8"));
				
				workbook.write(response.getOutputStream());
				workbook.close();
			//}
		//}catch(IOException e) {
			//e.printStackTrace();
		//}
	
		for (MemberVO vo2 : alist) {
            System.out.println(vo2);
        }
		
	}
}
