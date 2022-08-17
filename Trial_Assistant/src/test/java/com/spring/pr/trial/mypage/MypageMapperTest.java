package com.spring.pr.trial.mypage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.spring.pr.command.FaqVO;
import com.spring.pr.command.UserVO;
import com.spring.pr.mypage.mapper.IMypageMapper;

@WebAppConfiguration 
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MypageMapperTest {
	
	@Autowired
	private IMypageMapper mapper; 
	
	
	@Test
	public void getinfoTest() {
		System.out.println(mapper.getInfo("haiii0"));
	}
	
	@Test
	public void updateUserTest() {
		UserVO user = new UserVO();
		user.setJOINID("haiii0");
		user.setJOINADDRBASIC("수정 주소3");
		user.setJOINADDRDETAIL("수정 주소소3");
		
		mapper.updateUser(user);
	}
	
	@Test
	public void deleteUserTest() {

		mapper.deleteUser1("i2-1", "1번째 비번", "1이름");
		mapper.deleteUser2("i2-10", "1번째 비번", "1이름");
	}
	
	@Test
	public void getListTest() {
		System.out.println(mapper.getList());
	}
	
	@Test
	public void getTotal() {
		System.out.println(mapper.getTotal());
	}
	
	@Test
	public void registFaqTest() {
		for (int i = 0; i <= 10; i++) {
			FaqVO faq = new FaqVO();
			faq.setFaqTitle(i + "제모옥");
			faq.setFaqContent(i + "내요옹");
			faq.setFaqHit(0);
			faq.setFaqFileLoca(i + "경로오 c://~~~");
			faq.setJOINID("id" + i);
			mapper.registFaq(faq);
		}
	}

	@Test
	public void getContentTest() {
		System.out.println(mapper.getContent(204));
	}
	
	@Test
	public void updateFaqTest() {
		FaqVO faq = new FaqVO();
		faq.setFaqTitle("수정수정");
		faq.setFaqContent("수정 내용 수정 내용 ");
		faq.setFaqFileLoca("수정 파일 경로 수정 파일 경로" );
		faq.setFaqNum(2);
		mapper.updateFaq(faq);
	}
	
	
	
	@Test
	public void deleteFaqTest() {

		mapper.deleteFaq(205);
	}
	
	@Test
	public void upHitTest() {
		mapper.upHit(203);
	}

}
