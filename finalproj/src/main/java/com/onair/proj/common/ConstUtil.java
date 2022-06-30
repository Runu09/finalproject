package com.onair.proj.common;

public interface ConstUtil {
	//게시판 페이징 관련 상수
	public static final int RECORD_COUNT=5;
	public static final int RECORD_COUNT1=10;
	int BLOCKSIZE=10;

	//파일 업로드 관련 상수
	String FILE_UPLOAD_TYPE="test";   //테스트시
	//String FILE_UPLOAD_TYPE="deploy"; //배포시
	
	//자료실 - 파일 저장 경로
	String FILE_UPLOAD_PATH="user_upload";
	String FILE_UPLOAD_PATH_TEST="D:\\lecture\\GIT\\repo\\finalproject\\finalproj\\src\\main\\resources\\static\\user_upload";
	
	//관리자 페이지 - 관리자 관련 업로드 경로설정 --> 사진 저장 경로
	String IMAGE_FILE_UPLOAD_PATH="img_upload";
	String IMAGE_FILE_UPLOAD_PATH_TEST="C:\\lecture\\GIT\\repo\\finalproject\\finalproj\\src\\main\\resources\\static\\img_upload";
	
	//자료실 업로드인지, 상품 등록시 업로드인지 구분값
	int UPLOAD_FILE_FLAG=1;  //유저 업로드
	int UPLOAD_IMAGE_FLAG=2; //관리자 관련 등록시 이미지 업로드

	
	
}
