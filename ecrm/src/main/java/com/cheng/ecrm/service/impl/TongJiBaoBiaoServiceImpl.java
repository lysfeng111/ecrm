package com.cheng.ecrm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cheng.ecrm.mapper.TongJiBaoBiaoMapper;
import com.cheng.ecrm.service.ITongJiBaoBiaoService;
@Service("tongJiBaoBiaoService")
public class TongJiBaoBiaoServiceImpl implements ITongJiBaoBiaoService {
	@Autowired
	private TongJiBaoBiaoMapper tongJiBaoBiaoMapper;
	
	@Override
	public List<Map<String, Object>> getsuiFangChart1(Map<String, Object> param) {
		
		return tongJiBaoBiaoMapper.getsuiFangChart1(param);
	}
	@Override
	public List<Map<String, Object>> getsuiFangChart0(Map<String, Object> param) {
		
		return tongJiBaoBiaoMapper.getsuiFangChart0(param);
	}

}
