package com.cheng.ecrm.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cheng.ecrm.service.ITongJiBaoBiaoService;
import com.cheng.ecrm.utils.DateUtil;


@Controller
@RequestMapping("/charts")
public class TongJiBaoBiao {
	@Autowired
	private ITongJiBaoBiaoService tongJiBaoBiaoService;
	
	@RequestMapping("/chart.do")
	public String chart(HttpServletRequest request,HttpServletResponse response) throws IOException{
		return "tongjibaobiao";
	}
	@RequestMapping("/getsuiFangChart1.do")
	public void getsuiFangChart1(String startDateStr,String endDateStr,HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html; charset=utf-8");
		Map<String,Object> param = new HashMap<>();
		if(startDateStr != null&&!"".equals(startDateStr)){
			Date startDate = DateUtil.convertString2Date(startDateStr);
			Date endDate = DateUtil.convertString2Date(endDateStr);
			if(startDate.getTime()<=endDate.getTime()){
				param.put("startDate", startDate);
				param.put("endDate", endDate);
			}
		}
		List<Map<String,Object>> suiFangChart = tongJiBaoBiaoService.getsuiFangChart1(param);
		JSONArray jsonArray = JSONArray.fromObject(suiFangChart);//转化成json对象
	    PrintWriter out=response.getWriter();
	    System.out.print(jsonArray);
		out.print(jsonArray);
		out.flush();
		out.close();
	}
	@RequestMapping("/getsuiFangChart0.do")
	public void getsuiFangChart0(String startDateStr,String endDateStr,HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html; charset=utf-8");
		Map<String,Object> param = new HashMap<>();
		if(startDateStr != null&&!"".equals(startDateStr)){
			Date startDate = DateUtil.convertString2Date(startDateStr);
			Date endDate = DateUtil.convertString2Date(endDateStr);
			if(startDate.getTime()<=endDate.getTime()){
				param.put("startDate", startDate);
				param.put("endDate", endDate);
			}
		}
		List<Map<String,Object>> suiFangChart = tongJiBaoBiaoService.getsuiFangChart0(param);
		JSONArray jsonArray = JSONArray.fromObject(suiFangChart);//转化成json对象
	    PrintWriter out=response.getWriter();
		out.println(jsonArray);
		out.flush();
		out.close();
	}
}
