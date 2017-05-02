package com.fitness.entity;

public class Newscontent {
    private String newscId;

    private String newscContent;

    private String newscShuming;

    private String newscPhone;

    private String newscHotline;

    public String getNewscId() {
        return newscId;
    }

    public void setNewscId(String newscId) {
        this.newscId = newscId == null ? null : newscId.trim();
    }

    public String getNewscContent() {
        return newscContent;
    }

    public void setNewscContent(String newscContent) {
        this.newscContent = newscContent == null ? null : newscContent.trim();
    }

    public String getNewscShuming() {
        return newscShuming;
    }

    public void setNewscShuming(String newscShuming) {
        this.newscShuming = newscShuming == null ? null : newscShuming.trim();
    }

    public String getNewscPhone() {
        return newscPhone;
    }

    public void setNewscPhone(String newscPhone) {
        this.newscPhone = newscPhone == null ? null : newscPhone.trim();
    }

    public String getNewscHotline() {
        return newscHotline;
    }

    public void setNewscHotline(String newscHotline) {
        this.newscHotline = newscHotline == null ? null : newscHotline.trim();
    }
}