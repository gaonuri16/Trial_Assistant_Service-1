package com.spring.pr.command;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class SlctnVO {
	
	/*
	CREATE TABLE Slctn (
		SEL_NUM_SEQ	NUMBER(10)	NOT NULL,
		SEL_NAME	VARCHAR2(10)	NOT NULL,
		SEL_SUBCAT	VARCHAR2(10)	NOT NULL,
		SEL_SCORE	NUMBER(10)	NOT NULL,
		JOIN_ID	VARCHAR2(20)	NOT NULL
		);

	CREATE SEQUENCE SEL_NUM_SEQ_NAME
	    START WITH 1
	    INCREMENT BY 1 
	    MAXVALUE 1000
	    NOCYCLE 
	    NOCACHE; 
	*/
	
	private int SelNum;
	private String SelName;
	private String SelSubcat;
	private int SelScore;
	private String JoinId;
}
