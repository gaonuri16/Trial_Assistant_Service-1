package com.spring.pr.command;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
CREATE TABLE Unqualify (
	JOIN_ID	VARCHAR2(20)	NOT NULL,
	UNQ_REASON	VARCHAR2(500)	NOT NULL
	);
*/

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class UnqualifyVO {
	
	private String UnqReason;
	private String JoinId;

}
