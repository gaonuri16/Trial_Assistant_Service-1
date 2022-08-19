package com.spring.pr.trial.Ts;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.pr.command.TsVO;
import com.spring.pr.ts.mapper.ITsMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class TsMapperTest {
	
	@Autowired
	private ITsMapper mapper;
	
	@Test
	public void registTest() {
		for (int i = 0; i <= 100; i++) {
			TsVO ts = new TsVO();
			ts.setTsName(i + "Name");
			ts.setTsSocNum(i + "SocNum");
			ts.setTsHomeNum(i + "HomeNum");
			ts.setTsAcadBack(i + "AcadBack");
			ts.setTsAcadBackFile(i + "c:// ~~~");
			ts.setTsCarrer(i + "Carrer");
			ts.setTsCarrerFile(i + "c:// ~~~");
			ts.setTsEmail(i + "Email");
			ts.setTsPhoneNum(i + "PhoneNum");
			ts.setTsBank(i + "Bank");
			ts.setTsAccHol(i + "AccHol");
			ts.setTsBankNum(i + "BankNum");
			ts.setTsPostNum(i + "PostNum");
			ts.setTsAddr(i + "c:// ~~~");
			ts.setTsDtlAddr(i + "DtlAddr");
			ts.setTsExprt(i + "Exprt");
			ts.setTsLngg(i + "Lngg");
			ts.setTsDsgCrt(i + "DsgCrt");
			ts.setTsActiveArea(i + "ActiveArea");
			ts.setJoinId("홍길동");
			ts.setAppNumSeq(1);
			mapper.regist(ts);
		}
	}

}
