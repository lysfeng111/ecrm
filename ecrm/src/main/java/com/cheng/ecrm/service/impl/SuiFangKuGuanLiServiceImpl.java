package com.cheng.ecrm.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.cheng.ecrm.body.dto.SuiFangDuanXin;
import com.cheng.ecrm.body.dto.SuiFangKuDto;
import com.cheng.ecrm.entity.DuanXin;
import com.cheng.ecrm.entity.SuiFang;
import com.cheng.ecrm.mapper.BingLiGuanLiMapper;
import com.cheng.ecrm.mapper.DuanXinMapper;
import com.cheng.ecrm.mapper.SuiFangKuGuanLiMapper;
import com.cheng.ecrm.mapper.SuiFangMapper;
import com.cheng.ecrm.service.ISuiFangKuGuanLiService;
import com.cheng.ecrm.utils.SmsDemo;
@Service("suiFangKuGuanLiService")
public class SuiFangKuGuanLiServiceImpl implements ISuiFangKuGuanLiService {

	@Autowired
	private SuiFangKuGuanLiMapper suiFangKuGuanLiMapper;
	@Autowired
	private DuanXinMapper duanXinMapper;
	@Autowired
	private SuiFangMapper suiFangMapper;
	@Autowired
	private BingLiGuanLiMapper bingLiGuanLiMapper;
	
	@Override
	public List<Map<String, Object>> suiFangList(SuiFangKuDto suiFangKuDto) {
		
		return suiFangKuGuanLiMapper.suiFangList(suiFangKuDto);
	}

	@Override
	public List<Map<String,Object>> getDuanXinSuiFangByBlCode(String blCode) {
		return suiFangKuGuanLiMapper.getDuanXinSuiFangByBlCode(blCode);
	}

	
	@Override
	public void xinZenDuanXinSuiFang(String blCode,String blDianHua,Integer sfType,String dxBiaoTi,String dxNeiRong) {
		
		SuiFang suiFang = new SuiFang();
		
		if(sfType != null){
			suiFang.setSfType(sfType);
		}
		suiFang.setSfDianhuaState(1);
		suiFang.setBlCode(blCode);
		suiFangMapper.insertSelective(suiFang);
		
		Integer sfId = suiFangKuGuanLiMapper.getMaxSfId();
		
		DuanXin duanXin = new DuanXin();
		if(blDianHua != null && !"".equals(blDianHua)){
			duanXin.setBlDianhua(blDianHua.trim());
		}
		if(sfType != null){
			duanXin.setDxType(sfType);
		}
		if(dxBiaoTi != null && !"".equals(dxBiaoTi)){
			duanXin.setDxBiaoti(dxBiaoTi.trim());
		}
		if(dxNeiRong != null&&!"".equals(dxNeiRong)){
			duanXin.setDxNeirong(dxNeiRong);
		}
		if(sfId != null && !"".equals(sfId)){
			duanXin.setSfId(sfId);
		}
		duanXinMapper.insertSelective(duanXin);
		
		
	}

	@Override
	public List<Map<String, Object>> suiFangListByMonth(String mon) {
		
		return suiFangKuGuanLiMapper.suiFangListByMonth(mon);
	}

	@Override
	@Transactional
	public void sendMsg() {
		List<SuiFangDuanXin> list = suiFangKuGuanLiMapper.getSuiFangDuanXinToSend();
		
    	if(list != null && list.size()>0){
    		for(SuiFangDuanXin suiFangDuanXin:list ){
    			String blDianhua = suiFangDuanXin.getBlDianhua();
    			String blCode = suiFangDuanXin.getBlCode();
    			
    			String blName = bingLiGuanLiMapper.getBlNameByBlCode(blCode);
    			
    			SendSmsResponse sendSms;
				try {
					sendSms = SmsDemo.sendSms(blDianhua,blName);
					System.out.println("短信接口返回的数据----------------"); 
			        System.out.println("Code=" + sendSms.getCode());
			        System.out.println("Message=" + sendSms.getMessage());
			        System.out.println("RequestId=" + sendSms.getRequestId());
			        System.out.println("BizId=" + sendSms.getBizId());
				} catch (ClientException e) {

					e.printStackTrace();
				}
				
				SuiFang suiFang = new SuiFang();
				suiFang.setId(suiFangDuanXin.getSfId());
				suiFang.setSfDianhuaState(0);
				suiFang.setSfStartDate(new Date());
				suiFangMapper.updateByPrimaryKeySelective(suiFang);
    		}
    	}
	}

}
