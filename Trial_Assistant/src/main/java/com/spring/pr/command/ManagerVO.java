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
public class ManagerVO {

	/*
	CREATE TABLE Mngr (
		MNGR_ID	VARCHAR(20)	NOT NULL,
		MNGR_NAME	VARCHAR(20)	NOT NULL,
		MNGR_PHONE	VARCHAR(20)	NOT NULL,
		MNGR_EMAIL	VARCHAR(30)	NULL,
		MNGR_PRMS_A	VARCHAR(10)	NOT NULL,
		MNGR_INLG	VARCHAR(10)	NOT NULL
		); 
	*/
	
	private String ManagerId;
	private String ManagerName;
	private String ManagerPhone;
	private String ManagerEmail;
	private String ManagerPrms;
	private String ManagerInlg;
	
}
