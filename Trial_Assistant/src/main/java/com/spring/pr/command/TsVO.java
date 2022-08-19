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
public class TsVO {
	
	/*
	CREATE TABLE Ts (
		TS_NUM_SEQ	NUMBER(10)	NOT NULL,
		TS_NAME	VARCHAR2(30)	NOT NULL,
		TS_SOC_NUM	VARCHAR2(20)	NOT NULL,
		TS_HOME_NUM	VARCHAR2(20)	NULL,
		TS_ACAD_BACK	VARCHAR2(500)	NOT NULL,
		TS_ACAD_BACK_FILE	VARCHAR2(30)	NULL,
		TS_CARRER	VARCHAR2(500)	NOT NULL,
		TS_CARRER_FILE	VARCHAR2(30)	NOT NULL,
		TS_EMAIL	VARCHAR2(50)	NOT NULL,
		TS_PHONE_NUM	VARCHAR2(20)	NOT NULL,
		TS_BANK	VARCHAR2(20)	NOT NULL,
		TS_ACC_HOL	VARCHAR2(30)	NOT NULL,
		TS_BANK_NUM	VARCHAR2(30)	NOT NULL,
		TS_POST_NUM	VARCHAR2(10)	NOT NULL,
		TS_ADDR	VARCHAR2(100)	NOT NULL,
		TS_DTL_ADDR	VARCHAR2(100)	NOT NULL,
		TS_EXPRT	VARCHAR2(50)	NOT NULL,
		TS_LNGG	VARCHAR2(50)	NOT NULL,
		TS_DSG_CRT	VARCHAR2(100)	NOT NULL,
		TS_ACTIVE_AREA	VARCHAR2(100)	NOT NULL,
		APP_NUM_SEQ	NUMBER(10)	NOT NULL,
		JOIN_ID	VARCHAR2(20)	NOT NULL
		);
		
		CREATE SEQUENCE TS_NUM_SEQ_NAME
		    START WITH 1
		    INCREMENT BY 1  
		    MAXVALUE 1000
		    NOCYCLE 
		    NOCACHE;
	*/
	private int tsNum;
	private String tsName;
	private String tsSocNum;
	private String tsHomeNum;
	private String tsAcadBack;
	private String tsAcadBackFile;
	private String tsCarrer;
	private String tsCarrerFile;
	private String tsEmail;
	private String tsPhoneNum;
	private String tsBank;
	private String tsAccHol;
	private String tsBankNum;
	private String tsPostNum;
	private String tsAddr;
	private String tsDtlAddr;
	private String tsExprt;
	private String tsLngg;
	private String tsDsgCrt;
	private String tsActiveArea;
	private int appNumSeq;
	private String joinId;
	
}
