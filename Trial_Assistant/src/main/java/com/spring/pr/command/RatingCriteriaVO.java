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
public class RatingCriteriaVO {
	/*
	CREATE TABLE RatingCriteria (
		RC_NUM_SEQ	NUMBER(10)	NOT NULL,
		RC_APC_NAME	VARCHAR2(50)	NOT NULL,
		RC_TOTAL_CAREER	VARCHAR2(20)	NULL,
		RC_LOCAL_CAREER	VARCHAR2(20)	NULL,
		RC_OFFICE_LOCA	VARCHAR2(50)	NOT NULL,
		RC_PERSONALY_EVALUATION	VARCHAR2(10)	NOT NULL,
		RC_INTERVIEW_EVALUATION	VARCHAR2(10)	NOT NULL,
		RC_CERITIFICATION_NAME1	VARCHAR2(30)	NULL,
		RC_CERITIFICATION_NAME2	VARCHAR2(30)	NULL,
		RC_CERITIFICATION_NAME3	VARCHAR2(30)	NULL,
		RC_CERITIFICATION_NAME4	VARCHAR2(30)	NULL,
		RC_TOTAL_SCORE	NUMBER	NOT NULL,
		RC_APPRAISER_SCORE	NUMBER	NOT NULL,
		RC_AJM_JDGE_SCORE	NUMBER	 DEFAULT 0 NULL,
		RC_LAST_TOTAL_SCORE	NUMBER	NOT NULL,
		JOIN_ID	VARCHAR(255)	NOT NULL
		);
		
		CREATE SEQUENCE INSTT_NUM_SEQ_NAME
		    START WITH 1
		    INCREMENT BY 1  
		    MAXVALUE 1000
		    NOCYCLE 
		    NOCACHE;
	*/
	private int RcNum;
	private String RcApcName;
	private String RcTotalCareer;
	private String RcLocalCareer;
	private String RcOfficeLoca;
	private String RcPersonalyEvaluation;
	private String RcInterviewEvaluation;
	private String RcCeritificationName1;
	private String RcCeritificationName2;
	private String RcCeritificationName3;
	private String RcCeritificationName4;
	private int RcTotalScore;
	private int RcAppraiserScore;
	private int RcAjmJdgeScore;
	private int RcLastTotalScore;
	private String JoinId;
}
