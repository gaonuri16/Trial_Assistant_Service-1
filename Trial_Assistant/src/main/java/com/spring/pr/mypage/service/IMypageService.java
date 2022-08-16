package com.spring.pr.mypage.service;

import java.util.List;

import com.spring.pr.command.FaqVO;
import com.spring.pr.command.UserBasicVO;
import com.spring.pr.command.UserDetailVO;

public interface IMypageService {

	//my info 정보 조회
	void getInfo(UserBasicVO basic, UserDetailVO detail);
			
	//my info 정보 수정
	void update(String JoinSocNum);
			
	//회원 탈퇴 
	void delete(String JoinSocNum);
			
	//조력자 신청/선정 현황 조회
	//void getSup();
			
	// 조력자 신청 정보 수정 
	//void updateSup();
			
	//myfaq 질문 글 목록 조회
	List<FaqVO> getList();
			
	//myfaq 질문 등록 
	void regist(FaqVO faq);
			
	//myfaq 상세보기 
	FaqVO getContent(int FaqNum);
			
	//myfaq 글 수정
	void update(FaqVO faq);
			
	//myfaq 글 삭제 
	void delete(int FaqNum);
			
	//myfaq 글 조회수 
	void upHit(int FaqNum);
	
	
}
