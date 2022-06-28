package com.onair.proj.admin.model;

import java.io.IOException;
import java.util.List;

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
import org.springframework.stereotype.Service;

import com.onair.proj.admin.controller.ExcelController;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberDAO;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.voc.model.VocVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService{
	private static final Logger logger
	=LoggerFactory.getLogger(ExcelController.class);
	private final AdminDAO adminDao;
	
	@Override
	public int adminInsert(AdminVO vo) {
		return adminDao.adminInsert(vo);
	}

	@Override
	public int totalMember(MemberVO vo) {
		return adminDao.totalMember(vo);
	}

	@Override
	public int totalboard3(VocVO vo) {
		return adminDao.totalboard3(vo);
	}
	
	public int adminLogin(String manId, String manPwd) {
		String dbPwd= adminDao.adminSelectPwd(manId);
		int result=0;
		if(dbPwd !=null && !dbPwd.isEmpty()) {
			if(dbPwd.equals(manPwd)) {
				result=MemberService.LOGIN_OK;
			}else {
				result=MemberService.DISAGREE_PWD;
			}
		}else {
			result=MemberService.NONE_USERID;
		}
		return result;
	}

	@Override
	public List<MemberVO> selectMemberAll(SearchVO searchVo) {
		return adminDao.selectMemberAll(searchVo);
	}

	@Override
	public int selectMemberTotalRecord(SearchVO searchVo) {
		return adminDao.selectMemberTotalRecord(searchVo);
	}

	@Override
	public List<MemberVO> getExcelDown(MemberVO memberVo, HttpServletResponse response) {
		List<MemberVO> list = adminDao.selectMemberAll(null);
		try {
			Workbook workbook = new HSSFWorkbook();
			
			Sheet sheet = workbook.createSheet("유저목록");
			
			Row row = null;
			Cell cell= null;
			int rowNo = 0;
			
			CellStyle headStyle = workbook.createCellStyle();
			
			headStyle.setBorderTop(BorderStyle.THIN);
			headStyle.setBorderBottom(BorderStyle.THIN);
			headStyle.setBorderRight(BorderStyle.THIN);
			headStyle.setBorderLeft(BorderStyle.THIN);
			
			headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());
			headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
			
			headStyle.setAlignment(HorizontalAlignment.CENTER);
			
			CellStyle bodyStyle = workbook.createCellStyle();
			bodyStyle.setBorderTop(BorderStyle.THIN);
			bodyStyle.setBorderBottom(BorderStyle.THIN);
			bodyStyle.setBorderRight(BorderStyle.THIN);
			bodyStyle.setBorderLeft(BorderStyle.THIN);

			row = sheet.createRow(rowNo++);
			
			cell= row.createCell(0);
			cell.setCellStyle(headStyle);
			cell.setCellValue("번호");
			
			cell= row.createCell(1);
			cell.setCellStyle(headStyle);
			cell.setCellValue("유저아이디");
			
			cell= row.createCell(2);
			cell.setCellStyle(headStyle);
			cell.setCellValue("이름");
			
			cell= row.createCell(3);
			cell.setCellStyle(headStyle);
			cell.setCellValue("전화번호");
			
			cell= row.createCell(4);
			cell.setCellStyle(headStyle);
			cell.setCellValue("생년월일");
			
			cell= row.createCell(5);
			cell.setCellStyle(headStyle);
			cell.setCellValue("Email");
			
			cell= row.createCell(6);
			cell.setCellStyle(headStyle);
			cell.setCellValue("주소");
			
			cell= row.createCell(7);
			cell.setCellStyle(headStyle);
			cell.setCellValue("마일리지");
			
			for(MemberVO excelData : list) {
				row = sheet.createRow(rowNo++);
				cell = row.createCell(0);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(excelData.getMemNo());
				
				cell = row.createCell(1);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(excelData.getMemId());
				
				cell = row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(excelData.getMemName());
				
				cell = row.createCell(3);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(excelData.getMTel1()+excelData.getMTel2()+excelData.getMTel3());
				
				cell = row.createCell(4);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(excelData.getMBirthday());
				
				cell = row.createCell(5);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(excelData.getMEmail1()+"@"+excelData.getMEmail2());
				
				cell = row.createCell(6);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(excelData.getMAdd1()+excelData.getMAdd2());
				
				cell = row.createCell(7);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(excelData.getMMileage());
				
				response.setContentType("ms-vnd/excel");
				response.setHeader("Content-Disposition", "attachment;filename=test.xls");
				
				workbook.write(response.getOutputStream());
				workbook.close();
			}
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		return list;
	}

}
