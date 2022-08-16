package com.spring.pr.trial.mypage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.pr.command.FaqVO;
import com.spring.pr.mypage.mapper.IMypageMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MypageMapperTest {
	
	@Autowired
	private IMypageMapper mapper; 
	
	@Test
	public void registFaqTest() {
		for (int i = 0; i <= 2; i++) {
			FaqVO faq = new FaqVO();
			faq.setFaqTitle(i + "title");
			faq.setFaqContent(i + "content~");
			faq.setFaqHit(0);
			faq.setFaqFileLoca(i + "file location c://~~~");
			faq.setJoinId("admin~");
			mapper.registFaq(faq);;
		}
	}
}
//	
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
//	public void getContentTest() {
//		System.out.println(mapper.getContent(2));
//	}
//	
//	@Test
//	public void updateTest() {
//		FaqVO faq = new FaqVO();
//		faq.setFaqTitle("수정수정");
//		faq.setFaqContent("수정 내용 수정 내용 ");
//		faq.setFaqFileLoca("수정 파일 경로 수정 파일 경로" );
//		faq.setFaqNum(2);
//		mapper.update(faq);
//	}
//	
//	@Test
//	public void deleteTest() {
//
//		mapper.delete(3);
//	}
//	
//	@Test
//	public void upHitTest() {
//		mapper.upHit(2);
//	}
//
//}
