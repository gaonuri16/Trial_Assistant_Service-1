package com.spring.pr.user.mapper;

import org.apache.ibatis.annotations.Param;

import com.spring.pr.command.UserVO;

public interface IUserMapper {
	
	//아이디 중복 확인 
	int idCheck(String JOINID);
	
	//회원 가입
	void join(UserVO user);
		
	//로그인 
	UserVO login(@Param("JOINID") String JOINID, @Param("JOINPW") String JOINPW);
	
	//아이디 찾기 
	UserVO idSearch(@Param("JOINNAME") String JOINNAME, @Param("JOINSOCNUM") String JOINSOCNUM);
		
	//비밀번호 재등록
	void pwSearch(UserVO user);
	
	//회원 정보 얻어오기 
	UserVO getInfo(String JOINID);
	
	
	//회원 정보 수정 
	void updateUser(UserVO user);

	//회원 정보 삭제 
	void deleteUser1(@Param("JOINSOCNUM") String JOINSOCNUM, @Param("JOINPW") String JOINPW, @Param("JOINNAME") String JOINNAME);
	void deleteUser2(@Param("JOINSOCNUM") String JOINSOCNUM, @Param("JOINPW") String JOINPW, @Param("JOINNAME") String JOINNAME);
	

}
