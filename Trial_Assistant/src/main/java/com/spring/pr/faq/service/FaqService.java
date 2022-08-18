package com.spring.pr.faq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.pr.answer.mapper.IAnswerMapper;
import com.spring.pr.command.FaqVO;
import com.spring.pr.faq.mapper.IFaqMapper;

@Service
public class FaqService implements IFaqService {
	@Autowired
	private IFaqMapper faqMapper;
	
	@Autowired
	private IAnswerMapper ansMapper;

	@Override
	public void regist(FaqVO faq) {
		faqMapper.regist(faq);
	}

	@Override
	public List<FaqVO> getList() {
		
		return faqMapper.getList();
	}

	@Override
	public int getTotal() {
		return faqMapper.getTotal();
	}

	@Override
	public FaqVO getContent(int FaqNum) {
		return faqMapper.getContent(FaqNum);
	}

	@Override
	public void update(FaqVO faq) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int FaqNum) {
		// TODO Auto-generated method stub

	}

	@Override
	public void upHit(int FaqNum) {
		// TODO Auto-generated method stub

	}

}
