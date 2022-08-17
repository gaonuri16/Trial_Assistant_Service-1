package com.spring.pr.user.service;

import org.springframework.stereotype.Service;

import com.spring.pr.command.UserBasicVO;
import com.spring.pr.command.UserDetailVO;
import com.spring.pr.command.UserVO;

@Service
public class UserService implements IUserService {

	@Override
	public int idCheck(String JOINID) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void join(UserVO user) {
		// TODO Auto-generated method stub

	}

	@Override
	public void login(String JOINID, String JOINPW) {
		// TODO Auto-generated method stub

	}

	@Override
	public void idSearch(String JOINNAME, String JOINSOCNUM) {
		// TODO Auto-generated method stub

	}

	@Override
	public void pwSearch(String JOINNAME, String JOINSOCNUM) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getInfo(UserBasicVO basic, UserDetailVO detail) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateUser(UserBasicVO basic, UserDetailVO detail) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteUser(String JOINID, String JOINPW) {
		// TODO Auto-generated method stub

	}

}
