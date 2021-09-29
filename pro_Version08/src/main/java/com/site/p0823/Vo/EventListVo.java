package com.site.p0823.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EventListVo {

    // 이벤트번호 
    private Integer event_id;

    // 이벤트제목 
    private String event_Title;

    // 이벤트메인이미지 
    private String event_Main;

    // 이벤트설명이미지 
    private String event_Serve;

    // 이벤트기간 
    private String event_Period;
    
}
