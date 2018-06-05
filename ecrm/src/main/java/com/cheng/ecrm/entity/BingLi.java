package com.cheng.ecrm.entity;

import java.io.Serializable;
import java.util.Date;

public class BingLi implements Serializable {
    private Integer id;

    private String blCode;

    private Integer blType;

    private String blKeshi;

    private String blName;

    private Integer blSex;

    private Date blChushengDate;

    private String blDianhua;

    private String blJiatingDianhua;

    private Integer blZhengjianType;

    private String blZhengjianhao;

    private String blDizhi;

    private Date blRuyuanDate;

    private Date blChuyuanDate;

    private String blMzysCode;

    private String blZyysCode;

    private String blCyzd;

    private String blZdysCode;

    private Date blShoushuDate;

    private String blXiangqing;

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

    public Integer getBlType() {
        return blType;
    }

    public void setBlType(Integer blType) {
        this.blType = blType;
    }

    public String getBlKeshi() {
        return blKeshi;
    }

    public void setBlKeshi(String blKeshi) {
        this.blKeshi = blKeshi == null ? null : blKeshi.trim();
    }

    public String getBlName() {
        return blName;
    }

    public void setBlName(String blName) {
        this.blName = blName == null ? null : blName.trim();
    }

    public Integer getBlSex() {
        return blSex;
    }

    public void setBlSex(Integer blSex) {
        this.blSex = blSex;
    }

    public Date getBlChushengDate() {
        return blChushengDate;
    }

    public void setBlChushengDate(Date blChushengDate) {
        this.blChushengDate = blChushengDate;
    }

    public String getBlDianhua() {
        return blDianhua;
    }

    public void setBlDianhua(String blDianhua) {
        this.blDianhua = blDianhua == null ? null : blDianhua.trim();
    }

    public String getBlJiatingDianhua() {
        return blJiatingDianhua;
    }

    public void setBlJiatingDianhua(String blJiatingDianhua) {
        this.blJiatingDianhua = blJiatingDianhua == null ? null : blJiatingDianhua.trim();
    }

    public Integer getBlZhengjianType() {
        return blZhengjianType;
    }

    public void setBlZhengjianType(Integer blZhengjianType) {
        this.blZhengjianType = blZhengjianType;
    }

    public String getBlZhengjianhao() {
        return blZhengjianhao;
    }

    public void setBlZhengjianhao(String blZhengjianhao) {
        this.blZhengjianhao = blZhengjianhao == null ? null : blZhengjianhao.trim();
    }

    public String getBlDizhi() {
        return blDizhi;
    }

    public void setBlDizhi(String blDizhi) {
        this.blDizhi = blDizhi == null ? null : blDizhi.trim();
    }

    public Date getBlRuyuanDate() {
        return blRuyuanDate;
    }

    public void setBlRuyuanDate(Date blRuyuanDate) {
        this.blRuyuanDate = blRuyuanDate;
    }

    public Date getBlChuyuanDate() {
        return blChuyuanDate;
    }

    public void setBlChuyuanDate(Date blChuyuanDate) {
        this.blChuyuanDate = blChuyuanDate;
    }

    public String getBlMzysCode() {
        return blMzysCode;
    }

    public void setBlMzysCode(String blMzysCode) {
        this.blMzysCode = blMzysCode == null ? null : blMzysCode.trim();
    }

    public String getBlZyysCode() {
        return blZyysCode;
    }

    public void setBlZyysCode(String blZyysCode) {
        this.blZyysCode = blZyysCode == null ? null : blZyysCode.trim();
    }

    public String getBlCyzd() {
        return blCyzd;
    }

    public void setBlCyzd(String blCyzd) {
        this.blCyzd = blCyzd == null ? null : blCyzd.trim();
    }

    public String getBlZdysCode() {
        return blZdysCode;
    }

    public void setBlZdysCode(String blZdysCode) {
        this.blZdysCode = blZdysCode == null ? null : blZdysCode.trim();
    }

    public Date getBlShoushuDate() {
        return blShoushuDate;
    }

    public void setBlShoushuDate(Date blShoushuDate) {
        this.blShoushuDate = blShoushuDate;
    }

    public String getBlXiangqing() {
        return blXiangqing;
    }

    public void setBlXiangqing(String blXiangqing) {
        this.blXiangqing = blXiangqing == null ? null : blXiangqing.trim();
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
        BingLi other = (BingLi) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getBlCode() == null ? other.getBlCode() == null : this.getBlCode().equals(other.getBlCode()))
            && (this.getBlType() == null ? other.getBlType() == null : this.getBlType().equals(other.getBlType()))
            && (this.getBlKeshi() == null ? other.getBlKeshi() == null : this.getBlKeshi().equals(other.getBlKeshi()))
            && (this.getBlName() == null ? other.getBlName() == null : this.getBlName().equals(other.getBlName()))
            && (this.getBlSex() == null ? other.getBlSex() == null : this.getBlSex().equals(other.getBlSex()))
            && (this.getBlChushengDate() == null ? other.getBlChushengDate() == null : this.getBlChushengDate().equals(other.getBlChushengDate()))
            && (this.getBlDianhua() == null ? other.getBlDianhua() == null : this.getBlDianhua().equals(other.getBlDianhua()))
            && (this.getBlJiatingDianhua() == null ? other.getBlJiatingDianhua() == null : this.getBlJiatingDianhua().equals(other.getBlJiatingDianhua()))
            && (this.getBlZhengjianType() == null ? other.getBlZhengjianType() == null : this.getBlZhengjianType().equals(other.getBlZhengjianType()))
            && (this.getBlZhengjianhao() == null ? other.getBlZhengjianhao() == null : this.getBlZhengjianhao().equals(other.getBlZhengjianhao()))
            && (this.getBlDizhi() == null ? other.getBlDizhi() == null : this.getBlDizhi().equals(other.getBlDizhi()))
            && (this.getBlRuyuanDate() == null ? other.getBlRuyuanDate() == null : this.getBlRuyuanDate().equals(other.getBlRuyuanDate()))
            && (this.getBlChuyuanDate() == null ? other.getBlChuyuanDate() == null : this.getBlChuyuanDate().equals(other.getBlChuyuanDate()))
            && (this.getBlMzysCode() == null ? other.getBlMzysCode() == null : this.getBlMzysCode().equals(other.getBlMzysCode()))
            && (this.getBlZyysCode() == null ? other.getBlZyysCode() == null : this.getBlZyysCode().equals(other.getBlZyysCode()))
            && (this.getBlCyzd() == null ? other.getBlCyzd() == null : this.getBlCyzd().equals(other.getBlCyzd()))
            && (this.getBlZdysCode() == null ? other.getBlZdysCode() == null : this.getBlZdysCode().equals(other.getBlZdysCode()))
            && (this.getBlShoushuDate() == null ? other.getBlShoushuDate() == null : this.getBlShoushuDate().equals(other.getBlShoushuDate()))
            && (this.getBlXiangqing() == null ? other.getBlXiangqing() == null : this.getBlXiangqing().equals(other.getBlXiangqing()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getBlCode() == null) ? 0 : getBlCode().hashCode());
        result = prime * result + ((getBlType() == null) ? 0 : getBlType().hashCode());
        result = prime * result + ((getBlKeshi() == null) ? 0 : getBlKeshi().hashCode());
        result = prime * result + ((getBlName() == null) ? 0 : getBlName().hashCode());
        result = prime * result + ((getBlSex() == null) ? 0 : getBlSex().hashCode());
        result = prime * result + ((getBlChushengDate() == null) ? 0 : getBlChushengDate().hashCode());
        result = prime * result + ((getBlDianhua() == null) ? 0 : getBlDianhua().hashCode());
        result = prime * result + ((getBlJiatingDianhua() == null) ? 0 : getBlJiatingDianhua().hashCode());
        result = prime * result + ((getBlZhengjianType() == null) ? 0 : getBlZhengjianType().hashCode());
        result = prime * result + ((getBlZhengjianhao() == null) ? 0 : getBlZhengjianhao().hashCode());
        result = prime * result + ((getBlDizhi() == null) ? 0 : getBlDizhi().hashCode());
        result = prime * result + ((getBlRuyuanDate() == null) ? 0 : getBlRuyuanDate().hashCode());
        result = prime * result + ((getBlChuyuanDate() == null) ? 0 : getBlChuyuanDate().hashCode());
        result = prime * result + ((getBlMzysCode() == null) ? 0 : getBlMzysCode().hashCode());
        result = prime * result + ((getBlZyysCode() == null) ? 0 : getBlZyysCode().hashCode());
        result = prime * result + ((getBlCyzd() == null) ? 0 : getBlCyzd().hashCode());
        result = prime * result + ((getBlZdysCode() == null) ? 0 : getBlZdysCode().hashCode());
        result = prime * result + ((getBlShoushuDate() == null) ? 0 : getBlShoushuDate().hashCode());
        result = prime * result + ((getBlXiangqing() == null) ? 0 : getBlXiangqing().hashCode());
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
        sb.append(", blType=").append(blType);
        sb.append(", blKeshi=").append(blKeshi);
        sb.append(", blName=").append(blName);
        sb.append(", blSex=").append(blSex);
        sb.append(", blChushengDate=").append(blChushengDate);
        sb.append(", blDianhua=").append(blDianhua);
        sb.append(", blJiatingDianhua=").append(blJiatingDianhua);
        sb.append(", blZhengjianType=").append(blZhengjianType);
        sb.append(", blZhengjianhao=").append(blZhengjianhao);
        sb.append(", blDizhi=").append(blDizhi);
        sb.append(", blRuyuanDate=").append(blRuyuanDate);
        sb.append(", blChuyuanDate=").append(blChuyuanDate);
        sb.append(", blMzysCode=").append(blMzysCode);
        sb.append(", blZyysCode=").append(blZyysCode);
        sb.append(", blCyzd=").append(blCyzd);
        sb.append(", blZdysCode=").append(blZdysCode);
        sb.append(", blShoushuDate=").append(blShoushuDate);
        sb.append(", blXiangqing=").append(blXiangqing);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}