package com.cheng.ecrm.entity;

import java.io.Serializable;
import java.util.Date;

public class BingLiGuanLi implements Serializable {
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
    private String blMzysName;
    private String blZyysCode;
    private String blZyysName;
    private String blCyzd;

    private String blZdysCode;

    private String blShoushuDate;

    private String blXiangqing;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBlMzysName() {
		return blMzysName;
	}

	public void setBlMzysName(String blMzysName) {
		this.blMzysName = blMzysName;
	}

	public String getBlZyysName() {
		return blZyysName;
	}

	public void setBlZyysName(String blZyysName) {
		this.blZyysName = blZyysName;
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

    public void setBlZdysName(String blZdysCode) {
        this.blZdysCode = blZdysCode == null ? null : blZdysCode.trim();
    }

    public String getBlShoushuDate() {
        return blShoushuDate;
    }

    public void setBlShoushuDate(String blShoushuDate) {
    	this.blShoushuDate = blShoushuDate;
    }

    public String getBlXiangqing() {
        return blXiangqing;
    }

    public void setBlXiangqing(String blXiangqing) {
        this.blXiangqing = blXiangqing == null ? null : blXiangqing.trim();
    }
    
    //jsp页面中获取年龄
    public int getNianLing(){
        return com.cheng.ecrm.utils.DateUtil.getNianLing(blChushengDate);
    }

	@Override
	public String toString() {
		return "BingLi [id=" + id + ", blCode=" + blCode + ", blType=" + blType + ", blKeshi=" + blKeshi + ", blName="
				+ blName + ", blSex=" + blSex + ", blChushengDate=" + blChushengDate + ", blDianhua=" + blDianhua
				+ ", blJiatingDianhua=" + blJiatingDianhua + ", blZhengjianType=" + blZhengjianType
				+ ", blZhengjianhao=" + blZhengjianhao + ", blDizhi=" + blDizhi + ", blRuyuanDate=" + blRuyuanDate
				+ ", blChuyuanDate=" + blChuyuanDate + ", blMzysCode=" + blMzysCode + ", blMzysName=" + blMzysName
				+ ", blZyysCode=" + blZyysCode + ", blZyysName=" + blZyysName + ", blCyzd=" + blCyzd + ", blZdysCode="
				+ blZdysCode + ", blShoushuDate=" + blShoushuDate + ", blXiangqing=" + blXiangqing + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((blChushengDate == null) ? 0 : blChushengDate.hashCode());
		result = prime * result + ((blChuyuanDate == null) ? 0 : blChuyuanDate.hashCode());
		result = prime * result + ((blCode == null) ? 0 : blCode.hashCode());
		result = prime * result + ((blCyzd == null) ? 0 : blCyzd.hashCode());
		result = prime * result + ((blDianhua == null) ? 0 : blDianhua.hashCode());
		result = prime * result + ((blDizhi == null) ? 0 : blDizhi.hashCode());
		result = prime * result + ((blJiatingDianhua == null) ? 0 : blJiatingDianhua.hashCode());
		result = prime * result + ((blKeshi == null) ? 0 : blKeshi.hashCode());
		result = prime * result + ((blMzysCode == null) ? 0 : blMzysCode.hashCode());
		result = prime * result + ((blMzysName == null) ? 0 : blMzysName.hashCode());
		result = prime * result + ((blName == null) ? 0 : blName.hashCode());
		result = prime * result + ((blRuyuanDate == null) ? 0 : blRuyuanDate.hashCode());
		result = prime * result + ((blSex == null) ? 0 : blSex.hashCode());
		result = prime * result + ((blShoushuDate == null) ? 0 : blShoushuDate.hashCode());
		result = prime * result + ((blType == null) ? 0 : blType.hashCode());
		result = prime * result + ((blXiangqing == null) ? 0 : blXiangqing.hashCode());
		result = prime * result + ((blZdysCode == null) ? 0 : blZdysCode.hashCode());
		result = prime * result + ((blZhengjianType == null) ? 0 : blZhengjianType.hashCode());
		result = prime * result + ((blZhengjianhao == null) ? 0 : blZhengjianhao.hashCode());
		result = prime * result + ((blZyysCode == null) ? 0 : blZyysCode.hashCode());
		result = prime * result + ((blZyysName == null) ? 0 : blZyysName.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BingLiGuanLi other = (BingLiGuanLi) obj;
		if (blChushengDate == null) {
			if (other.blChushengDate != null)
				return false;
		} else if (!blChushengDate.equals(other.blChushengDate))
			return false;
		if (blChuyuanDate == null) {
			if (other.blChuyuanDate != null)
				return false;
		} else if (!blChuyuanDate.equals(other.blChuyuanDate))
			return false;
		if (blCode == null) {
			if (other.blCode != null)
				return false;
		} else if (!blCode.equals(other.blCode))
			return false;
		if (blCyzd == null) {
			if (other.blCyzd != null)
				return false;
		} else if (!blCyzd.equals(other.blCyzd))
			return false;
		if (blDianhua == null) {
			if (other.blDianhua != null)
				return false;
		} else if (!blDianhua.equals(other.blDianhua))
			return false;
		if (blDizhi == null) {
			if (other.blDizhi != null)
				return false;
		} else if (!blDizhi.equals(other.blDizhi))
			return false;
		if (blJiatingDianhua == null) {
			if (other.blJiatingDianhua != null)
				return false;
		} else if (!blJiatingDianhua.equals(other.blJiatingDianhua))
			return false;
		if (blKeshi == null) {
			if (other.blKeshi != null)
				return false;
		} else if (!blKeshi.equals(other.blKeshi))
			return false;
		if (blMzysCode == null) {
			if (other.blMzysCode != null)
				return false;
		} else if (!blMzysCode.equals(other.blMzysCode))
			return false;
		if (blMzysName == null) {
			if (other.blMzysName != null)
				return false;
		} else if (!blMzysName.equals(other.blMzysName))
			return false;
		if (blName == null) {
			if (other.blName != null)
				return false;
		} else if (!blName.equals(other.blName))
			return false;
		if (blRuyuanDate == null) {
			if (other.blRuyuanDate != null)
				return false;
		} else if (!blRuyuanDate.equals(other.blRuyuanDate))
			return false;
		if (blSex == null) {
			if (other.blSex != null)
				return false;
		} else if (!blSex.equals(other.blSex))
			return false;
		if (blShoushuDate == null) {
			if (other.blShoushuDate != null)
				return false;
		} else if (!blShoushuDate.equals(other.blShoushuDate))
			return false;
		if (blType == null) {
			if (other.blType != null)
				return false;
		} else if (!blType.equals(other.blType))
			return false;
		if (blXiangqing == null) {
			if (other.blXiangqing != null)
				return false;
		} else if (!blXiangqing.equals(other.blXiangqing))
			return false;
		if (blZdysCode == null) {
			if (other.blZdysCode != null)
				return false;
		} else if (!blZdysCode.equals(other.blZdysCode))
			return false;
		if (blZhengjianType == null) {
			if (other.blZhengjianType != null)
				return false;
		} else if (!blZhengjianType.equals(other.blZhengjianType))
			return false;
		if (blZhengjianhao == null) {
			if (other.blZhengjianhao != null)
				return false;
		} else if (!blZhengjianhao.equals(other.blZhengjianhao))
			return false;
		if (blZyysCode == null) {
			if (other.blZyysCode != null)
				return false;
		} else if (!blZyysCode.equals(other.blZyysCode))
			return false;
		if (blZyysName == null) {
			if (other.blZyysName != null)
				return false;
		} else if (!blZyysName.equals(other.blZyysName))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

 
}