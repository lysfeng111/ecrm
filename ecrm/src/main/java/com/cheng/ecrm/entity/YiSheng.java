package com.cheng.ecrm.entity;

import java.io.Serializable;

public class YiSheng implements Serializable {
    private Integer id;

    private String ysCode;

    private String ysName;

    private String ysKeshi;

    private String ysZhiwei;

    private Integer ysNianling;

    private String ysDianhua;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getYsCode() {
        return ysCode;
    }

    public void setYsCode(String ysCode) {
        this.ysCode = ysCode == null ? null : ysCode.trim();
    }

    public String getYsName() {
        return ysName;
    }

    public void setYsName(String ysName) {
        this.ysName = ysName == null ? null : ysName.trim();
    }

    public String getYsKeshi() {
        return ysKeshi;
    }

    public void setYsKeshi(String ysKeshi) {
        this.ysKeshi = ysKeshi == null ? null : ysKeshi.trim();
    }

    public String getYsZhiwei() {
        return ysZhiwei;
    }

    public void setYsZhiwei(String ysZhiwei) {
        this.ysZhiwei = ysZhiwei == null ? null : ysZhiwei.trim();
    }

    public Integer getYsNianling() {
        return ysNianling;
    }

    public void setYsNianling(Integer ysNianling) {
        this.ysNianling = ysNianling;
    }

    public String getYsDianhua() {
        return ysDianhua;
    }

    public void setYsDianhua(String ysDianhua) {
        this.ysDianhua = ysDianhua == null ? null : ysDianhua.trim();
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        YiSheng other = (YiSheng) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getYsCode() == null ? other.getYsCode() == null : this.getYsCode().equals(other.getYsCode()))
            && (this.getYsName() == null ? other.getYsName() == null : this.getYsName().equals(other.getYsName()))
            && (this.getYsKeshi() == null ? other.getYsKeshi() == null : this.getYsKeshi().equals(other.getYsKeshi()))
            && (this.getYsZhiwei() == null ? other.getYsZhiwei() == null : this.getYsZhiwei().equals(other.getYsZhiwei()))
            && (this.getYsNianling() == null ? other.getYsNianling() == null : this.getYsNianling().equals(other.getYsNianling()))
            && (this.getYsDianhua() == null ? other.getYsDianhua() == null : this.getYsDianhua().equals(other.getYsDianhua()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getYsCode() == null) ? 0 : getYsCode().hashCode());
        result = prime * result + ((getYsName() == null) ? 0 : getYsName().hashCode());
        result = prime * result + ((getYsKeshi() == null) ? 0 : getYsKeshi().hashCode());
        result = prime * result + ((getYsZhiwei() == null) ? 0 : getYsZhiwei().hashCode());
        result = prime * result + ((getYsNianling() == null) ? 0 : getYsNianling().hashCode());
        result = prime * result + ((getYsDianhua() == null) ? 0 : getYsDianhua().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", ysCode=").append(ysCode);
        sb.append(", ysName=").append(ysName);
        sb.append(", ysKeshi=").append(ysKeshi);
        sb.append(", ysZhiwei=").append(ysZhiwei);
        sb.append(", ysNianling=").append(ysNianling);
        sb.append(", ysDianhua=").append(ysDianhua);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}