package com.cheng.ecrm.web.controller;


import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cheng.ecrm.body.dto.BingLiListDto;
import com.cheng.ecrm.entity.BingLi;
import com.cheng.ecrm.entity.BingLiGuanLi;
import com.cheng.ecrm.service.IBingLiGuanLiService;
import com.cheng.ecrm.service.IBingLiService;
import com.cheng.ecrm.service.IYiShengService;
import com.cheng.ecrm.utils.DateUtil;

@Controller
@RequestMapping("/bingLiGuanLi")
public class BingLiGuanLiController {
	
	@Autowired
	private IBingLiGuanLiService bingLiGuanLiService;
	@Autowired
	private IBingLiService blService;
	@Autowired
	private IYiShengService yiShengService;
	
	@RequestMapping("/bl_list.do")
	public String bingLiList(BingLiListDto blListDto,ModelMap model){
		model.put("blTypeDto",blListDto.getBlType() );
		model.put("blKeshiDto", blListDto.getBlKeshi());
		model.put("blNianLingDto", blListDto.getNianLing());
		if("科室".equals(blListDto.getBlKeshi())){
			blListDto.setBlKeshi(null);
		}
		
		if(blListDto.getBlType()!=null && blListDto.getBlType()==0){
			blListDto.setBlType(null);
		}
		
		if(blListDto.getNianLing()!=null && blListDto.getNianLing() == 0){
			blListDto.setNianLing(null);
		}
		
		List<BingLiGuanLi> bingLis = bingLiGuanLiService.bingLiList(blListDto);
		model.put("bingLis", bingLis);
		
		return "bingliguanli";
	}
	
	@RequestMapping("/bl_xiangqing.do")
	public String bingLiXiangQing(String blCode,ModelMap model){
		
		BingLiGuanLi bingLi = bingLiGuanLiService.getBingLiByBlCode(blCode);
		if(bingLi != null ){
			if("0000-00-00".equals(bingLi.getBlShoushuDate())){
				bingLi.setBlShoushuDate("");
			}
			model.put("bingLi", bingLi);
		}
		String zdysName = yiShengService.getNameFromCode(bingLi.getBlZdysCode());
		
		if(!StringUtils.isEmpty(zdysName)){
			model.put("zdysName", zdysName);
		}
		
		
		return "binglixiangqing";
	}
	
	@RequestMapping("/bl_xiugai.do")
	public String bingLiXiuGai(String blCode,String zdysName,ModelMap model){
		
		BingLiGuanLi bingLi = bingLiGuanLiService.getBingLiByBlCode(blCode);
		if(!StringUtils.isEmpty(zdysName)){
			model.put("zdysName", zdysName);
		}
		if(bingLi != null ){
			if("0000-00-00".equals(bingLi.getBlShoushuDate())){
				bingLi.setBlShoushuDate("");
			}
			model.put("bingLi", bingLi);
		}
		
		return "binglixiugai";
	}
	
	@RequestMapping("/bl_update.do")
	public String bingLiUpdate(String blName,String blCode,Integer blSex,String blKeshi,String blChushengDate,
			String blDianhua,String blJiatingDianhua,Integer blZhengjianType,String blZhengjianhao,String blDizhi,
			String blRuyuanDate,String blChuyuanDate,String blMzysName,String blZyysName,String blCyzd,
			String blZdysName,String blShoushuDate,String  blXiangqing,Integer id,ModelMap model){
		String blMzysCode = yiShengService.getCodeByName(blMzysName);
		String blZyysCode = yiShengService.getCodeByName(blZyysName);
		String blZdysCode = yiShengService.getCodeByName(blZdysName);

		BingLi bingLi  = new BingLi();
		bingLi.setBlName(blName);
		bingLi.setBlCode(blCode);
		bingLi.setBlSex(blSex);
		bingLi.setBlKeshi(blKeshi);
		bingLi.setBlChushengDate(DateUtil.convertString2Date(blChushengDate));
		bingLi.setBlDianhua(blDianhua);
		bingLi.setBlJiatingDianhua(blJiatingDianhua);
		bingLi.setBlZhengjianType(blZhengjianType);
		bingLi.setBlZhengjianhao(blZhengjianhao);
		bingLi.setBlDizhi(blDizhi);
		bingLi.setBlRuyuanDate(DateUtil.convertString2Date(blRuyuanDate));
		bingLi.setBlChuyuanDate(DateUtil.convertString2Date(blChuyuanDate));
		bingLi.setBlMzysCode(blMzysCode);
		bingLi.setBlZyysCode(blZyysCode);
		bingLi.setBlCyzd(blCyzd);
		bingLi.setBlZdysCode(blZdysCode);
		bingLi.setBlShoushuDate(DateUtil.convertString2Date(blShoushuDate));
		bingLi.setBlXiangqing(blXiangqing);
		bingLi.setId(id);
		
		blService.updateByPrimaryKeySelective(bingLi);
		
		
		BingLiGuanLi bingLiGuanLi = bingLiGuanLiService.getBingLiByBlCode(bingLi.getBlCode());
		if(bingLiGuanLi != null ){
			if("0000-00-00".equals(bingLiGuanLi.getBlShoushuDate())){
				bingLiGuanLi.setBlShoushuDate("");
			}
			model.put("bingLi", bingLiGuanLi);
		}
		String zdysName = yiShengService.getNameFromCode(bingLiGuanLi.getBlZdysCode());
		
		if(!StringUtils.isEmpty(zdysName)){
			model.put("zdysName", zdysName);
		}
		
		return "binglixiangqing";
	}
	
	@RequestMapping("/xzblview.do")
	public String xzblView(){
		return "xinzenbingli";
	}
	
	@RequestMapping("/xinzenbingli.do")
	public String xinZenBingLi(String blName,Integer blSex,String blKeshi,Integer blType,String blChushengDate,
			String blDianhua,String blJiatingDianhua,Integer blZhengjianType,String blZhengjianhao,String blDizhi,
			String blRuyuanDate,String blChuyuanDate,String blMzysName,String blZyysName,String blCyzd,
			String blZdysName,String blShoushuDate,String  blXiangqing,ModelMap model,HttpServletResponse response){
		String blMzysCode = yiShengService.getCodeByName(blMzysName);
		String blZyysCode = yiShengService.getCodeByName(blZyysName);
		String blZdysCode = yiShengService.getCodeByName(blZdysName);
		String xinZenBlCode = bingLiGuanLiService.getXinZenBlCode();
		
		BingLi bingLi  = new BingLi();
		bingLi.setBlName(blName);
		bingLi.setBlType(blType);
		bingLi.setBlSex(blSex);
		bingLi.setBlKeshi(blKeshi);
		bingLi.setBlChushengDate(DateUtil.convertString2Date(blChushengDate));
		bingLi.setBlDianhua(blDianhua);
		bingLi.setBlJiatingDianhua(blJiatingDianhua);
		bingLi.setBlZhengjianType(blZhengjianType);
		bingLi.setBlZhengjianhao(blZhengjianhao);
		bingLi.setBlDizhi(blDizhi);
		bingLi.setBlRuyuanDate(DateUtil.convertString2Date(blRuyuanDate));
		bingLi.setBlChuyuanDate(DateUtil.convertString2Date(blChuyuanDate));
		bingLi.setBlMzysCode(blMzysCode);
		bingLi.setBlZyysCode(blZyysCode);
		bingLi.setBlCyzd(blCyzd);
		bingLi.setBlZdysCode(blZdysCode);
		bingLi.setBlShoushuDate(DateUtil.convertString2Date(blShoushuDate));
		bingLi.setBlXiangqing(blXiangqing);
		
		if(xinZenBlCode != null && !"".equals(xinZenBlCode)){
			bingLi.setBlCode(xinZenBlCode);
		}

		blService.xinZenBingLi(bingLi);
		
		return "redirect:bl_list.do";
	}
}
