package com.site.p0823.Vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EventVo {

	private int event_no;
	private String event_content;
	private Timestamp event_date;
	private String user_nickname;
	private int event_id;
	
}
