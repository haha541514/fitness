package com.fitness.entity;

import java.util.Date;

public class News {
    private String newsId;

    private String newsTitle;

    private Date newsCreatetime;

    private String newsOpcode;

    private String newsType;

    private Integer newsDel;
   
    private  Newstype ntype;//新闻类型
    
    private  Operator operator;//发布人
   
    public Operator getOperator() {
		return operator;
	}

	public void setOperator(Operator operator) {
		this.operator = operator;
	}

	public Newstype getNtype() {
		return ntype;
	}

	public void setNtype(Newstype ntype) {
		this.ntype = ntype;
	}

	public String getNewsId() {
        return newsId;
    }

    public void setNewsId(String newsId) {
        this.newsId = newsId == null ? null : newsId.trim();
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle == null ? null : newsTitle.trim();
    }

    public Date getNewsCreatetime() {
        return newsCreatetime;
    }

    public void setNewsCreatetime(Date newsCreatetime) {
        this.newsCreatetime = newsCreatetime;
    }

    public String getNewsOpcode() {
        return newsOpcode;
    }

    public void setNewsOpcode(String newsOpcode) {
        this.newsOpcode = newsOpcode == null ? null : newsOpcode.trim();
    }

    public String getNewsType() {
        return newsType;
    }

    public void setNewsType(String newsType) {
        this.newsType = newsType == null ? null : newsType.trim();
    }

    public Integer getNewsDel() {
        return newsDel;
    }

    public void setNewsDel(Integer newsDel) {
        this.newsDel = newsDel;
    }
}