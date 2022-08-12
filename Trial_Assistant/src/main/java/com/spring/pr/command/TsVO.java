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
		TS_DSGNT_COURT	VARCHAR2(100)	NOT NULL,
		TS_ACTVT_AREA	VARCHAR2(100)	NOT NULL,
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
	private int TsNum;
	private String TsName;
	private String TsSocNum;
	private String TsHomeNum;
	private String TsAcadBack;
	private String TsAcadBackFile;
	private String TsCarrer;
	private String TsCarrerFile;
	private String TsEmail;
	private String TsPhoneNum;
	private String TsBank;
	private String TsAccHol;
	private String TsBankNum;
	private String TsPostNum;
	private String TsAddr;
	private String TsDtlAddr;
	private String TsExprt;
	private String TsLngg;
	private String TsDsgntCourt;
	private String TsActvtArea;
	private int AppNum;
	private String JoinId;
	
}
