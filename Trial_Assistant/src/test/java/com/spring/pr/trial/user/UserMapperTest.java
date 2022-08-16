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
	public void joinTest() {
		for (int i = 0; i < 50; i++) {
			UserVO user = new UserVO();
			user.setJOINID("hrhr"+ i);
			user.setJOINSOCNUM(i + "번째 주민erer");
			user.setANMNOSEQ(i);
			user.setJOINPERSON("y");
			
			user.setJOINNAME(i + "이름");
			user.setJOINPW(i + "번째 비번");
			user.setJOINGEN("F");
			user.setJOINEMAIL(i + "번째 이메일");
			user.setJOINPHONE(i + "번째 번호");
			user.setJOINADDRBASIC(i + "번째 주소");
			user.setJOINADDRDETAIL(i + "번째 주소");
			user.setJOINRIGHT("Y");
			
			mapper.join(user);
			
//			UserBasicVO basic = new UserBasicVO();
//			basic.setJOINID("qw"+ i);
//			basic.setJOINSOCNUM(i + "번째 주민번호");
//			basic.setJOINPERSON("1");
//
//			
//			UserDetailVO detail = new UserDetailVO();
//			detail.setJOINSOCNUM(i + "번째 주민번호");
//			detail.setJOINNAME(i + "이름");
//			detail.setJOINPW(i + "번째 비번");
//			detail.setJOINGEN("1");
//			detail.setJOINEMAIL(i + "번째 이메일");
//			detail.setJOINPHONE(i + "번째 번호");
//			detail.setJOINADDRBASIC(i + "번째 주소");
//			detail.setJOINADDRDETAIL(i + "번째 주소소");
//			detail.setJOINRIGHT("Y");
//			user.setUserBasic(basic);
//			user.setUsereDetail(detail.set);
//			
			
			
		}
	}
}
//	@Test
//	public void getListTest() {
//		System.out.println(mapper.getList());
//	}
//	
//	@Test
//	public void getTotal() {
//		System.out.println(mapper.getTotal());
//	}
//	
//	
//	@Test
//	public void updateTest() {
//		NoticeVO notice = new NoticeVO();
//		notice.setNoticeNum(3);
//		notice.setNoticeTitle("수정수정수정수정 ");
//		notice.setNoticeWriter("수정수정수정");
//		notice.setNoticeContent("수정수정수정수정수정");
//		
//		mapper.update(notice);
//	}
//	
//	@Test
//	public void deleteTest() {
//
//		mapper.delete(2);
//	}
//
//}
