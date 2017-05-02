package com.fitness.entity;

import java.util.Date;

public class Video {
    private String videoId;

    private String videoTitle;

    private Date videoCreatetime;

    private String videoOpcode;

    private String videoDel;

    private String videoUrl;

    public String getVideoId() {
        return videoId;
    }

    public void setVideoId(String videoId) {
        this.videoId = videoId == null ? null : videoId.trim();
    }

    public String getVideoTitle() {
        return videoTitle;
    }

    public void setVideoTitle(String videoTitle) {
        this.videoTitle = videoTitle == null ? null : videoTitle.trim();
    }

    public Date getVideoCreatetime() {
        return videoCreatetime;
    }

    public void setVideoCreatetime(Date videoCreatetime) {
        this.videoCreatetime = videoCreatetime;
    }

    public String getVideoOpcode() {
        return videoOpcode;
    }

    public void setVideoOpcode(String videoOpcode) {
        this.videoOpcode = videoOpcode == null ? null : videoOpcode.trim();
    }

    public String getVideoDel() {
        return videoDel;
    }

    public void setVideoDel(String videoDel) {
        this.videoDel = videoDel == null ? null : videoDel.trim();
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl == null ? null : videoUrl.trim();
    }
}