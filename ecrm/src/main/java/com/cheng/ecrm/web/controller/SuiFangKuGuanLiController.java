package com.cheng.ecrm.web.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cheng.ecrm.body.dto.SuiFangKuDto;
import com.cheng.ecrm.entity.BingLiGuanLi;
import com.cheng.ecrm.entity.SuiFang;
import com.cheng.ecrm.service.IBingLiGuanLiService;
import com.cheng.ecrm.service.ISuiFangKuGuanLiService;
import com.cheng.ecrm.utils.DateUtil;

@Controller
@RequestMapping("/suiFangKu")
public class SuiFangKuGuanLiController {
	
	@Autowired
	private ISuiFangKuGuanLiService suiFangKuGuanLiService;

	@Autowired
	private IBingLiGuanLiService bingLiGuanLiService;
	
	@RequestMapping("/sfk_list.do")
	public String suiFangKuList(Integer suiFangState,Integer suiFangType,String blKeshi,Integer nianLing,String blName,ModelMap model){
		SuiFangKuDto suiFangKuDto = new SuiFangKuDto();

		if(suiFangState!=null){
			if(suiFangState == 0){
				suiFangState = null;
			}else if(suiFangState == 2){
				suiFangState = 0;
			}
		}
		if(suiFangType != null && suiFangType == 0){
			suiFangType = null;
		}
		if(blKeshi!=null && "科室".equals(blKeshi)){
			blKeshi = null;
		}
		if(nianLing!=null && nianLing==0){
			nianLing = null;
		}
		suiFangKuDto.setBlName(blName);
		suiFangKuDto.setSuiFangState(suiFangState);
		suiFangKuDto.setBlKeshi(blKeshi);
		System.out.println(suiFangKuDto);
		model.put("suiFangState", suiFangState);
		model.put("suiFangType", suiFangType);
		model.put("blKeshi", blKeshi);
		model.put("nianLing", nianLing);
		model.put("blName",blName);
		
		List<Map<String,Object>> suiFangList = suiFangKuGuanLiService.suiFangList(suiFangKuDto);
		if(suiFangList != null && suiFangList.size()>0){
			for(Map<String,Object> suiFang:suiFangList){
				Integer nianLin = DateUtil.getNianLing(DateUtil.convertString2Date(suiFang.get("blChushengDate").toString()));
				suiFang.put("nianLing", nianLin);
			}
		}
		model.put("suiFangList", suiFangList);

		return "suifangkuguanli";
	}
	@RequestMapping("/duanxin_suifang.do")
	public String duanXinSuiFang(String blCode,ModelMap model){
		
		BingLiGuanLi bingLiGuanLi = bingLiGuanLiService.getBingLiByBlCode(blCode);
		
		if(bingLiGuanLi != null){
			model.put("dxSuiFang", bingLiGuanLi);
		}
		List<Map<String,Object>> dxSuiFangList = suiFangKuGuanLiService.getDuanXinSuiFangByBlCode(blCode);
		
		model.put("dxSuiFangList", dxSuiFangList);
		
		return "duanxinsuifang";
	}
	@RequestMapping("/duanxin_xinzen_ajax.do")
	public void duanXinXinZen(String blCode,String blDianHua,Integer sfType,String dxBiaoTi,String dxNeiRong,ModelMap model){

		//System.out.println("sfId:"+sfId+",blCode:"+blCode+",blDianHua:"+blDianHua+",sfType:"+sfType+",sfDateStr:"+sfDateStr+",dxBiaoTi:"+dxBiaoTi+",dxneirong:"+dxNeiRong);
		suiFangKuGuanLiService.xinZenDuanXinSuiFang(blCode,blDianHua,sfType,dxBiaoTi,dxNeiRong);
		
		List<Map<String,Object>> dxSuiFangList = suiFangKuGuanLiService.getDuanXinSuiFangByBlCode(blCode);
		model.put("dxSuiFangList", dxSuiFangList);
	}
	
	/**
	 * 一键随访
	 */
	@RequestMapping("/yijiansuifang.do")
	public String yiJianSuiFang(ModelMap model){
		suiFangKuGuanLiService.sendMsg();
		System.out.println("****************");
		return "redirect:sfk_list.do";
	}
}
