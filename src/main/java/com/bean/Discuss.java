package com.bean;

import java.util.Date;

public class Discuss {
    private Integer dsId;

    private String dsContent;

    private Date dsShowtime;

    private Integer dsNewsid;

    private Integer dsStatus;

    private String dsOther1;

    private String dsOther2;

    public Integer getDsId() {
        return dsId;
    }

    public void setDsId(Integer dsId) {
        this.dsId = dsId;
    }

    public String getDsContent() {
        return dsContent;
    }

    public void setDsContent(String dsContent) {
        this.dsContent = dsContent == null ? null : dsContent.trim();
    }

    public Date getDsShowtime() {
        return dsShowtime;
    }

    public void setDsShowtime(Date dsShowtime) {
        this.dsShowtime = dsShowtime;
    }

    public Integer getDsNewsid() {
        return dsNewsid;
    }

    public void setDsNewsid(Integer dsNewsid) {
        this.dsNewsid = dsNewsid;
    }

    public Integer getDsStatus() {
        return dsStatus;
    }

    public void setDsStatus(Integer dsStatus) {
        this.dsStatus = dsStatus;
    }

    public String getDsOther1() {
        return dsOther1;
    }

    public void setDsOther1(String dsOther1) {
        this.dsOther1 = dsOther1 == null ? null : dsOther1.trim();
    }

    public String getDsOther2() {
        return dsOther2;
    }

    public void setDsOther2(String dsOther2) {
        this.dsOther2 = dsOther2 == null ? null : dsOther2.trim();
    }
}