package com.spring.pr.user.service;

import com.spring.pr.command.UserBasicVO;
import com.spring.pr.command.UserDetailVO;
import com.spring.pr.command.UserVO;


public interface IUserService {
	
		//아이디 중복 확인 
		int idCheck(String JOINID);
		
		//회원 가입
		void join(UserVO user);
			
		//로그인 
		void login(String JOINID, String JOINPW);
		
		//아이디 찾기 
		void idSearch(String JOINNAME, String JOINSOCNUM);
			
		//비밀번호 재등록
		void pwSearch(String JOINNAME, String JOINSOCNUM);
		
		//회원 정보 얻어오기 
		void getInfo(UserBasicVO basic, UserDetailVO detail);
					
		//회원 정보 수정 
		void updateUser(UserBasicVO basic, UserDetailVO detail);

		//회원 정보 삭제 
		void deleteUser(String JOINID, String JOINPW);
}
