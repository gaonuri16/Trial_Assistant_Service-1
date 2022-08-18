package com.spring.pr.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
CREATE TABLE ANSWER (
	ANS_NUMBER_SEQ	NUMBER(10)	NOT NULL,
	FAQ_NUMBER_SEQ	NUMBER(10)	NOT NULL,
	MNGR_ID	VARCHAR(20)	NOT NULL,
	ANS_TITLE VARCHAR2(50) NOT NULL, 
	ANS_WRITER	VARCHAR2(20)	NOT NULL,
	ANS_CONTENT	VARCHAR2(1000)	NOT NULL,
	ANS_DATE	DATE DEFAULT sysdate NOT NULL,
	ANS_FILE VARCHAR2(300), 
	ANS_FILE_REAL VARCHAR2(300),
	ANS_HIT NUMBER(10) DEFAULT 0 NOT NULL 
	);
	
	CREATE SEQUENCE ANS_NUMBER_SEQ_NAME
	    START WITH 1
	    INCREMENT BY 1 
	    MAXVALUE 1000
	    NOCYCLE 
	    NOCACHE;
 */

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class AnswerVO {
	
	private int AnsNum;
	private int FaqNum;
	private String MngrId;
	private String AnsTitle; 
	private String AnsWriter;
	private String AnsContent;
	private Timestamp AnsDate;
	
	private String AnsFile;
	private String AnsFileReal;
	private int AnsHit;

}

