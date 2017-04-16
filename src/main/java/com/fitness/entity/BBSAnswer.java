package com.fitness.entity;

import java.util.Date;

public class BBSAnswer {
    private Integer bbsanswerId;

    private Integer bbsanswerBbsid;

    private String bbsanswerContent;

    private Date bbsanswerSendtime;

    private String bbsanswerFace;

    public Integer getBbsanswerId() {
        return bbsanswerId;
    }

    public void setBbsanswerId(Integer bbsanswerId) {
        this.bbsanswerId = bbsanswerId;
    }

    public Integer getBbsanswerBbsid() {
        return bbsanswerBbsid;
    }

    public void setBbsanswerBbsid(Integer bbsanswerBbsid) {
        this.bbsanswerBbsid = bbsanswerBbsid;
    }

    public String getBbsanswerContent() {
        return bbsanswerContent;
    }

    public void setBbsanswerContent(String bbsanswerContent) {
        this.bbsanswerContent = bbsanswerContent == null ? null : bbsanswerContent.trim();
    }

    public Date getBbsanswerSendtime() {
        return bbsanswerSendtime;
    }

    public void setBbsanswerSendtime(Date bbsanswerSendtime) {
        this.bbsanswerSendtime = bbsanswerSendtime;
    }

    public String getBbsanswerFace() {
        return bbsanswerFace;
    }

    public void setBbsanswerFace(String bbsanswerFace) {
        this.bbsanswerFace = bbsanswerFace == null ? null : bbsanswerFace.trim();
    }
}