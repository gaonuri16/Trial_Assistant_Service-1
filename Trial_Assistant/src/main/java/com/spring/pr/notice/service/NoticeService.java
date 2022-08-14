package com.spring.pr.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.pr.command.NoticeVO;
import com.spring.pr.notice.mapper.INoticeMapper;

@Service 
public class NoticeService implements INoticeService {
	
	@Autowired
	private INoticeMapper mapper; 

	@Override
	public void regist(NoticeVO notice) {
		mapper.regist(notice);
	}

	@Override
	public List<NoticeVO> getList() {
		
		return mapper.getList();
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return mapper.getTotal();
	}

	@Override
	public NoticeVO getContent(int NoticeNum) {
		// TODO Auto-generated method stub
		return mapper.getContent(NoticeNum);
	}

	@Override
	public void update(NoticeVO notice) {
		mapper.update(notice);
	}

	@Override
	public void delete(int NoticeNum) {
		mapper.delete(NoticeNum);
	}

	@Override
	public void upHit(int FaqNum) {
		mapper.upHit(FaqNum);
	}

}
