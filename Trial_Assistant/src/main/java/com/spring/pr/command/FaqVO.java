package com.spring.pr.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
CREATE TABLE FAQ (
FAQ_NUMBER_SEQ	NUMBER(10)	NOT NULL,
FAQ_TITLE	VARCHAR2(50)	NOT NULL,
FAQ_CONTENT	VARCHAR2(1000)	NOT NULL,
FAQ_DATE	DATE	DEFAULT sysdate NOT NULL,
FAQ_HIT	NUMBER(5)	NOT NULL,
FAQ_FILE_LOCA VARCHAR2(300),
JOIN_ID	VARCHAR2(20)	NOT NULL
);

CREATE SEQUENCE FAQ_NUMBER_SEQ_NAME
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

public class FaqVO {
	
	private int FaqNum;
	private String FaqTitle;
	private String FaqContent;
	private Timestamp FaqDate;
	private int FaqHit;
	private String FaqFileLoca;
	private String JOINID;

}
