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
import org.springframework.transaction.annotation.Transactional;

import com.onair.proj.admin.controller.ExcelController;
import com.onair.proj.board.model.BoardVO;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberDAO;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.notice.model.NoticeVO;
import com.onair.proj.voc.model.VocVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
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
	public int totalboard2(BoardVO vo) {
		return adminDao.totalboard2(vo);
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
	public List<MemberVO> getExcelDown(MemberVO memberVo) {
		return adminDao.getExcelDown(memberVo);
	}

	@Override
	public AdminVO selectByManId(String manId) {
		return adminDao.selectByManId(manId);
	}

	@Override
	public int adminMemberDelete(String memId) {
		return adminDao.adminMemberDelete(memId);
	}

	@Override
	public List<AdminVO> selectAllAdmin(SearchVO searchVo) {
		return adminDao.selectAllAdmin(searchVo);
	}

	@Override
	public int selectAdminTotalRecord(SearchVO searchVo) {
		return adminDao.selectAdminTotalRecord(searchVo);
	}

	@Override
	public int deleteAdmin(String manId) {
		return adminDao.deleteAdmin(manId);
	}

	@Override
	public int editPwd(String manId, String manPwd) {
		return adminDao.editPwd(manId, manPwd);
	}

	@Override
	public int chkPwd(String manId) {
		return adminDao.chkPwd(manId);
	}

	@Override
	public int monthNotice(NoticeVO vo) {
		return adminDao.monthNotice(vo);
	}

}
