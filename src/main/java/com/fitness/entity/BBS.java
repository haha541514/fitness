package com.fitness.entity;

import java.util.Date;

public class BBS {
    private Integer bbsId;

    private String bbsTitle;

    private String bbsContent;

    private Integer bbsSender;

    private Date bbsSendtime;

    private String bbsFace;

    private Date bbsOptime;

    private String bbsIstop;

    private Date bbsTotoptime;

    private String bbsIsgood;

    private Date bbsTogoodtime;

    public Integer getBbsId() {
        return bbsId;
    }

    public void setBbsId(Integer bbsId) {
        this.bbsId = bbsId;
    }

    public String getBbsTitle() {
        return bbsTitle;
    }

    public void setBbsTitle(String bbsTitle) {
        this.bbsTitle = bbsTitle == null ? null : bbsTitle.trim();
    }

    public String getBbsContent() {
        return bbsContent;
    }

    public void setBbsContent(String bbsContent) {
        this.bbsContent = bbsContent == null ? null : bbsContent.trim();
    }

    public Integer getBbsSender() {
        return bbsSender;
    }

    public void setBbsSender(Integer bbsSender) {
        this.bbsSender = bbsSender;
    }

    public Date getBbsSendtime() {
        return bbsSendtime;
    }

    public void setBbsSendtime(Date bbsSendtime) {
        this.bbsSendtime = bbsSendtime;
    }

    public String getBbsFace() {
        return bbsFace;
    }

    public void setBbsFace(String bbsFace) {
        this.bbsFace = bbsFace == null ? null : bbsFace.trim();
    }

    public Date getBbsOptime() {
        return bbsOptime;
    }

    public void setBbsOptime(Date bbsOptime) {
        this.bbsOptime = bbsOptime;
    }

    public String getBbsIstop() {
        return bbsIstop;
    }

    public void setBbsIstop(String bbsIstop) {
        this.bbsIstop = bbsIstop == null ? null : bbsIstop.trim();
    }

    public Date getBbsTotoptime() {
        return bbsTotoptime;
    }

    public void setBbsTotoptime(Date bbsTotoptime) {
        this.bbsTotoptime = bbsTotoptime;
    }

    public String getBbsIsgood() {
        return bbsIsgood;
    }

    public void setBbsIsgood(String bbsIsgood) {
        this.bbsIsgood = bbsIsgood == null ? null : bbsIsgood.trim();
    }

    public Date getBbsTogoodtime() {
        return bbsTogoodtime;
    }

    public void setBbsTogoodtime(Date bbsTogoodtime) {
        this.bbsTogoodtime = bbsTogoodtime;
    }
}