package com.spring.pr.trial.notice;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.pr.command.NoticeVO;
import com.spring.pr.notice.mapper.INoticeMapper;
import com.spring.pr.util.PageVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class NoticeMapperTest {
	
	@Autowired
	private INoticeMapper mapper; 
	
	@Test
	public void registTest() {
		for (int i = 0; i <= 100; i++) {
			NoticeVO notice = new NoticeVO();
			notice.setNoticeNum(i);
			notice.setNoticeTitle(i + "번째 제목");
			notice.setNoticeWriter(i + "번째 작성자 ");
			notice.setNoticeContent(i + "번째 내용 ");
			notice.setNoticeFile(i+ "번째 파일 저장 주소 ");
			notice.setNoticeHits(i);
			notice.setMNGRID(i + "번째 관리자");
			mapper.regist(notice);
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
		System.out.println(mapper.getContent(3));
	}
	
	
	@Test
	public void updateTest() {
		NoticeVO notice = new NoticeVO();
		notice.setNoticeNum(3);
		notice.setNoticeTitle("수정수정수정수정 ");
		notice.setNoticeWriter("수정수정수정");
		notice.setNoticeContent("수정수정수정수정수정");
		
		mapper.update(notice);
	}
	
	@Test
	public void deleteTest() {

		mapper.delete(2);
	}
	
	@Test
	public void upHitTest() {
		mapper.upHit(3);
	}

}
