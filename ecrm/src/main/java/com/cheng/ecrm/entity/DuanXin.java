package com.cheng.ecrm.entity;

import java.io.Serializable;

public class DuanXin implements Serializable {
    private Integer id;

    private Integer sfId;

    private String blDianhua;

    private Integer dxType;

    private String dxBiaoti;

    private String dxNeirong;

    private Integer dxJiange;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSfId() {
        return sfId;
    }

    public void setSfId(Integer sfId) {
        this.sfId = sfId;
    }

    public String getBlDianhua() {
        return blDianhua;
    }

    public void setBlDianhua(String blDianhua) {
        this.blDianhua = blDianhua == null ? null : blDianhua.trim();
    }

    public Integer getDxType() {
        return dxType;
    }

    public void setDxType(Integer dxType) {
        this.dxType = dxType;
    }

    public String getDxBiaoti() {
        return dxBiaoti;
    }

    public void setDxBiaoti(String dxBiaoti) {
        this.dxBiaoti = dxBiaoti == null ? null : dxBiaoti.trim();
    }

    public String getDxNeirong() {
        return dxNeirong;
    }

    public void setDxNeirong(String dxNeirong) {
        this.dxNeirong = dxNeirong == null ? null : dxNeirong.trim();
    }

    public Integer getDxJiange() {
        return dxJiange;
    }

    public void setDxJiange(Integer dxJiange) {
        this.dxJiange = dxJiange;
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
        DuanXin other = (DuanXin) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getSfId() == null ? other.getSfId() == null : this.getSfId().equals(other.getSfId()))
            && (this.getBlDianhua() == null ? other.getBlDianhua() == null : this.getBlDianhua().equals(other.getBlDianhua()))
            && (this.getDxType() == null ? other.getDxType() == null : this.getDxType().equals(other.getDxType()))
            && (this.getDxBiaoti() == null ? other.getDxBiaoti() == null : this.getDxBiaoti().equals(other.getDxBiaoti()))
            && (this.getDxNeirong() == null ? other.getDxNeirong() == null : this.getDxNeirong().equals(other.getDxNeirong()))
            && (this.getDxJiange() == null ? other.getDxJiange() == null : this.getDxJiange().equals(other.getDxJiange()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getSfId() == null) ? 0 : getSfId().hashCode());
        result = prime * result + ((getBlDianhua() == null) ? 0 : getBlDianhua().hashCode());
        result = prime * result + ((getDxType() == null) ? 0 : getDxType().hashCode());
        result = prime * result + ((getDxBiaoti() == null) ? 0 : getDxBiaoti().hashCode());
        result = prime * result + ((getDxNeirong() == null) ? 0 : getDxNeirong().hashCode());
        result = prime * result + ((getDxJiange() == null) ? 0 : getDxJiange().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", sfId=").append(sfId);
        sb.append(", blDianhua=").append(blDianhua);
        sb.append(", dxType=").append(dxType);
        sb.append(", dxBiaoti=").append(dxBiaoti);
        sb.append(", dxNeirong=").append(dxNeirong);
        sb.append(", dxJiange=").append(dxJiange);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}