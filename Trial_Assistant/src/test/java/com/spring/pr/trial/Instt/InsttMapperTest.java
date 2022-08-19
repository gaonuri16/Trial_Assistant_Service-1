package com.spring.pr.trial.Instt;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.pr.command.InsttVO;
import com.spring.pr.instt.mapper.IInsttMapper;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class InsttMapperTest {
	
	@Autowired
	private IInsttMapper mapper;
	
	@Test
	public void registTest() {
		for (int i = 0; i <= 100; i++) {
			InsttVO instt = new InsttVO();
			instt.setInsttName(i + "Name");
			instt.setInsttOfcName(i + "SocNum");
			instt.setInsttYear(i + "HomeNum");
			instt.setInsttSrttn(i + "AcadBack");
			instt.setInsttDtlSrttn(i + "c:// ~~~");
			instt.setInsttSocNum(i + "Carrer");
			instt.setInsttBsnsNum(i + "c:// ~~~");
			instt.setInsttJob(i + "Email");
			instt.setInsttFax(i + "PhoneNum");
			instt.setInsttHomeNum(i + "Bank");
			instt.setInsttAcadBack(i + "AccHol");
			instt.setInsttAcadBackFile(i + "BankNum");
			instt.setInsttCarrer(i + "PostNum");
			instt.setInsttCarrerFile(i + "c:// ~~~");
			instt.setInsttEmail(i + "DtlAddr");
			instt.setInsttPhoneNum(i + "Exprt");
			instt.setInsttBank(i + "Lngg");
			instt.setInsttAccHol(i + "DsgCrt");
			instt.setInsttBankNum(i + "ActiveArea");
			instt.setInsttPostNum("");
			instt.setInsttAddr("테헤란로7길");
			instt.setInsttDtlAddr("7층 4실습실");
			instt.setAppNum(1);
			instt.setJoinId("ds123");
			mapper.regist(instt);
		}
	}

}
