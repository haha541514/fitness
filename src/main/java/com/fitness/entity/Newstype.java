package com.fitness.entity;

import java.util.Date;

public class Newstype {
    private String newstId;

    private String newstType;

    private Date newstTime;

    private String newstUsername;

    private Integer newstDel;

    public String getNewstId() {
        return newstId;
    }

    public void setNewstId(String newstId) {
        this.newstId = newstId == null ? null : newstId.trim();
    }

    public String getNewstType() {
        return newstType;
    }

    public void setNewstType(String newstType) {
        this.newstType = newstType == null ? null : newstType.trim();
    }

    public Date getNewstTime() {
        return newstTime;
    }

    public void setNewstTime(Date newstTime) {
        this.newstTime = newstTime;
    }

    public String getNewstUsername() {
        return newstUsername;
    }

    public void setNewstUsername(String newstUsername) {
        this.newstUsername = newstUsername == null ? null : newstUsername.trim();
    }

    public Integer getNewstDel() {
        return newstDel;
    }

    public void setNewstDel(Integer newstDel) {
        this.newstDel = newstDel;
    }
}