package com.spring.pr.trial.answer;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.pr.answer.mapper.IAnswerMapper;
import com.spring.pr.command.AnswerVO;
import com.spring.pr.command.FaqVO;
import com.spring.pr.command.NoticeVO;
import com.spring.pr.faq.mapper.IFaqMapper;
import com.spring.pr.notice.mapper.INoticeMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class AnswerMapperTest {
	
	@Autowired
	private IAnswerMapper mapper; 
	
	@Test
	public void registTest() {
		for (int i = 0; i <= 100; i++) {
			AnswerVO ans = new AnswerVO();
			ans.setMngrId("admin_id");
			ans.setAnsWriter(i + "writer");
			ans.setAnsContent(i + "content");
			ans.setAnsFileLoca(i + "c:// ~~~");
			mapper.regist(ans);
		}
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
	public void getContentTest() {
		System.out.println(mapper.getContent(2));
	}
	
	@Test
	public void updateTest() {
		AnswerVO ans = new AnswerVO();
		ans.setAnsContent("수정수정수정내용" );
		ans.setAnsFileLoca("수정수정 파일 경로");
		ans.setAnsNum(2);
		mapper.update(ans);
	}
	
	@Test
	public void deleteTest() {

		mapper.delete(3);
	}
	
	@Test
	public void upHitTest() {
		mapper.upHit(2);
	}

}



