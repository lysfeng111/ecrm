package com.cheng.ecrm.entity;

import java.io.Serializable;
import java.util.Date;

public class SuiFang implements Serializable {
    private Integer id;

    private String blCode;

    private Date sfStartDate;

    private Integer sfDianhuaState;

    private Integer sfType;

    private Integer sfFuzhenState;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBlCode() {
        return blCode;
    }

    public void setBlCode(String blCode) {
        this.blCode = blCode == null ? null : blCode.trim();
    }

    public Date getSfStartDate() {
        return sfStartDate;
    }

    public void setSfStartDate(Date sfStartDate) {
        this.sfStartDate = sfStartDate;
    }

    public Integer getSfDianhuaState() {
        return sfDianhuaState;
    }

    public void setSfDianhuaState(Integer sfDianhuaState) {
        this.sfDianhuaState = sfDianhuaState;
    }

    public Integer getSfType() {
        return sfType;
    }

    public void setSfType(Integer sfType) {
        this.sfType = sfType;
    }

    public Integer getSfFuzhenState() {
        return sfFuzhenState;
    }

    public void setSfFuzhenState(Integer sfFuzhenState) {
        this.sfFuzhenState = sfFuzhenState;
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
        SuiFang other = (SuiFang) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getBlCode() == null ? other.getBlCode() == null : this.getBlCode().equals(other.getBlCode()))
            && (this.getSfStartDate() == null ? other.getSfStartDate() == null : this.getSfStartDate().equals(other.getSfStartDate()))
            && (this.getSfDianhuaState() == null ? other.getSfDianhuaState() == null : this.getSfDianhuaState().equals(other.getSfDianhuaState()))
            && (this.getSfType() == null ? other.getSfType() == null : this.getSfType().equals(other.getSfType()))
            && (this.getSfFuzhenState() == null ? other.getSfFuzhenState() == null : this.getSfFuzhenState().equals(other.getSfFuzhenState()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getBlCode() == null) ? 0 : getBlCode().hashCode());
        result = prime * result + ((getSfStartDate() == null) ? 0 : getSfStartDate().hashCode());
        result = prime * result + ((getSfDianhuaState() == null) ? 0 : getSfDianhuaState().hashCode());
        result = prime * result + ((getSfType() == null) ? 0 : getSfType().hashCode());
        result = prime * result + ((getSfFuzhenState() == null) ? 0 : getSfFuzhenState().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", blCode=").append(blCode);
        sb.append(", sfStartDate=").append(sfStartDate);
        sb.append(", sfDianhuaState=").append(sfDianhuaState);
        sb.append(", sfType=").append(sfType);
        sb.append(", sfFuzhenState=").append(sfFuzhenState);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}