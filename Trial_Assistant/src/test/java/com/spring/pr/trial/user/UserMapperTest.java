package com.spring.pr.trial.user;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.spring.pr.command.UserVO;
import com.spring.pr.user.mapper.IUserMapper;



@WebAppConfiguration 
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserMapperTest {
	
	@Autowired
	public IUserMapper mapper; 
	
	@Test
	public void idCheck() {
		System.out.println(mapper.idCheck("test00"));
	}
	
	@Test
	public void joinTest() {
		for (int i = 0; i < 50; i++) {
			UserVO user = new UserVO();
			user.setJOINID("haiii"+ i);
			user.setJOINSOCNUM("i2"+ "-" + i);
			user.setANMNOSEQ(i*2);
			user.setJOINPERSON("1");
			
			user.setJOINNAME(i + "이름");
			user.setJOINPW(i + "번째 비번");
			user.setJOINGEN("F");
			user.setJOINEMAIL(i + "번째 이메일");
			user.setJOINPHONE(i + "번째 번호");
			user.setJOINADDRBASIC(i + "번째 주소");
			user.setJOINADDRDETAIL(i + "번째 주소소");
			user.setJOINRIGHT("Y");
			user.setINSSOCNUM("00"+"-"+i);
			user.setINSADDRBASIC(i + "기관주소");
			user.setINSADDRDETAIL(i + "기관주소소");
			
			
			mapper.join(user);
			
		}
	}
	
	@Test
	public void login() {
//		System.out.println(mapper.login("haiii0", "0번째 비번"));
		
		if (mapper.login("haiii0", "0번째 비번") != null){
			System.out.println("로그인 성공!");
		}else {
			System.out.println("로그인 실패 !");
		}
	}

	
	@Test
	public void idSearch() {
		System.out.println(mapper.idSearch("0이름", "i2-0").getJOINID());
	}
	
	@Test
	public void pwSearchTest() {
		UserVO user = new UserVO();
		user.setJOINNAME("1이름");
		user.setJOINSOCNUM("i2-1");
		user.setJOINPW("수정정정수정정수정");
		
		mapper.pwSearch(user);
	}
	
	@Test
	public void getinfoTest() {
		System.out.println(mapper.getInfo("haiii0"));
	}
	
	
	@Test
	public void updateUserTest() {
		UserVO user = new UserVO();
		user.setJOINID("test00");
		user.setJOINADDRBASIC("수정 주소3");
		user.setJOINADDRDETAIL("수정 주소소3");
		
		mapper.updateUser(user);
	}
	
	@Test
	public void deleteTest() {

		mapper.deleteUser1("200000-0000000", "hhpw", "홍길동");
		mapper.deleteUser2("200000-0000000", "hhpw", "홍길동");
	}

}
