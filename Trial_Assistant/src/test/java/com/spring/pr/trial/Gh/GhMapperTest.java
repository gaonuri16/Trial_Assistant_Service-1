package com.spring.pr.trial.Gh;

import org.junit.Test;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.pr.command.GhVO;
import com.spring.pr.gh.mapper.IGhMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class GhMapperTest {
	
	@Autowired
	private IGhMapper mapper; 
	
	@Test
	public void registTest() {
		for (int i = 0; i <= 100; i++) {
			GhVO gh = new GhVO();
			gh.setGhName(i + "Name");
			gh.setGhOfcName(i + "OfcName");
			gh.setGhOfcNum(i + "OfcNum");
			gh.setGhYear(i + "Year");
			gh.setGhSrttn(i + "1");
			gh.setGhSocNum(i + "SocNum");
			gh.setGhBsnsNum(i + "BsnsNum");
			gh.setGhJob(i + "Job");
			gh.setGhFax(i + "Fax");
			gh.setGhHomeNum(i + "HomeNum");
			gh.setGhAcadBack(i + "AcadBack");
			gh.setGhAcadBackFile(i + "c:// ~~~");
			gh.setGhCarrer(i + "Carrer");
			gh.setGhCarrerFile(i + "c:// ~~~");
			gh.setGhEmail(i + "Email");
			gh.setGhPhoneNum(i + "PhoneNum");
			gh.setGhBank(i + "Bank");
			gh.setGhAccHol(i + "AccHol");
			gh.setGhBankNum(i + "BankNum");
			gh.setGhPostNum(i + "PostNum");
			gh.setGhAddr(i + "Addr");
			gh.setGhDtlAddr(i + "DtlAddr");
			gh.setAppNumSeq(1);
			gh.setJoinId("홍길동");
			mapper.regist(gh);
		}
	}
	
}



