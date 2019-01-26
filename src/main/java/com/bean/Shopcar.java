package com.bean;

public class Shopcar {
    private Integer srId;

    private String srCoursename;

    private String srCourseteacher;

    private Integer srCoursetype;

    private Double srCourseprice;

    private String srCourseabstract;

    private Integer srStuId;

    private Integer srCsId;

    private Integer srStatus;

    public Integer getSrId() {
        return srId;
    }

    public void setSrId(Integer srId) {
        this.srId = srId;
    }

    public String getSrCoursename() {
        return srCoursename;
    }

    public void setSrCoursename(String srCoursename) {
        this.srCoursename = srCoursename == null ? null : srCoursename.trim();
    }

    public String getSrCourseteacher() {
        return srCourseteacher;
    }

    public void setSrCourseteacher(String srCourseteacher) {
        this.srCourseteacher = srCourseteacher == null ? null : srCourseteacher.trim();
    }

    public Integer getSrCoursetype() {
        return srCoursetype;
    }

    public void setSrCoursetype(Integer srCoursetype) {
        this.srCoursetype = srCoursetype;
    }

    public Double getSrCourseprice() {
        return srCourseprice;
    }

    public void setSrCourseprice(Double srCourseprice) {
        this.srCourseprice = srCourseprice;
    }

    public String getSrCourseabstract() {
        return srCourseabstract;
    }

    public void setSrCourseabstract(String srCourseabstract) {
        this.srCourseabstract = srCourseabstract == null ? null : srCourseabstract.trim();
    }

    public Integer getSrStuId() {
        return srStuId;
    }

    public void setSrStuId(Integer srStuId) {
        this.srStuId = srStuId;
    }

    public Integer getSrCsId() {
        return srCsId;
    }

    public void setSrCsId(Integer srCsId) {
        this.srCsId = srCsId;
    }

    public Integer getSrStatus() {
        return srStatus;
    }

    public void setSrStatus(Integer srStatus) {
        this.srStatus = srStatus;
    }
}