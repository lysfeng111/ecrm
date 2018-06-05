package com.cheng.ecrm.web.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cheng.ecrm.entity.User;
import com.cheng.ecrm.entity.YiSheng;
import com.cheng.ecrm.service.ISuiFangKuGuanLiService;
import com.cheng.ecrm.service.IUserService;
import com.cheng.ecrm.utils.DateUtil;

@Controller
@RequestMapping("/user")

public class UserController {
	
	@Autowired
	private IUserService userService;
	@Autowired
	private ISuiFangKuGuanLiService suiFangKuGuanLiService;
	
	 @RequestMapping("/newlogin.do")
	 public String newLogin(HttpServletRequest request){
		 return "login";
	 }
	
	 @RequestMapping("/zhuce.do")  
	 public String zhuCe(HttpServletRequest request){  
	        return "yonghuzhuce";
	 }
	 @RequestMapping("/login.do")  
	    public String login(@RequestParam String name,@RequestParam String password,ModelMap model,
				             HttpServletRequest request, HttpServletResponse response){  
		 	if(StringUtils.isEmpty(name) || StringUtils.isEmpty(password)){
		 		return "error";
		 	}
		 	model.put("name",name);
		 	String msg = null;
		 	User user=new User();
			user.setUserName(name.trim());
			User user1 = userService.login(user);
			
			YiSheng yiSheng = userService.yiShengLogin(user);

			if(user1 != null){
				if(user1.getPasswd() != null && !"".equals(user1.getPasswd())){
					if(user1.getPasswd().equals(password.trim())){
						HttpSession session = request.getSession();
						session.setAttribute("roleId", user1.getRoleId());
						return "redirect:shouye.do";
					}
					msg="密码错误";
					model.put("msg", msg);
					return "login";
				}
				msg="密码错误";
				model.put("msg", msg);
				return "login";
			}
			if(yiSheng != null){
				if(yiSheng.getYsCode() != null && !"".equals(yiSheng.getYsCode())){
					if(yiSheng.getYsCode().equals(password.trim())){
						
						return "redirect:shouye.do";
					}
					msg="密码错误";
					model.put("msg", msg);
					return "login";
				}
				msg="密码错误";
				model.put("msg", msg);
				return "login";
			}
			msg = "用户名不存在";
			model.put("msg", msg);
			return "login";
	 }

	@RequestMapping("/userzhuce.do")
	public String UserZhuCe(User user,HttpServletResponse response,ModelMap model){
		if(user != null && user.getUserName()!=null && !"".equals(user.getUserName())){
			String userName = user.getUserName().trim();
			if(!StringUtils.isEmpty(userName)){
				Integer nameCount = userService.nameCheck(userName);
				if(nameCount != null && nameCount > 0){
					String msg="用户名已存在";
					model.put("msg", msg);
					model.put("user", user);
					return "yonghuzhuce";
				}
			}
			user.setRoleId(2);
			userService.zhuCe(user);
		}
		
		return "login";
	}
	
	/**
	 * 用户管理
	 */
	@RequestMapping("/yonghuguanli.do")
	public String userGuanLi(String userName,Integer roleId,ModelMap model,HttpServletResponse response){
		
		Map<String,Object> param = new HashMap<>();
		if(userName != null && !"".equals(userName)){
			param.put("userName", userName);
			model.put("userName", userName);
		}
		if(roleId != null){
			param.put("roleId", roleId);
			model.put("roleId", roleId);
		}
		List<User> userList = userService.getUserByMap(param);
		if(userList != null && userList.size()>0){
			model.put("userList", userList);
		}
		
		return "yonghuguanli";
	}
	@RequestMapping("/xzyhview.do")
	public String xzyhView(){
		return "xinzengyonghu";
	}
	@RequestMapping("/xzyonghu.do")
	public String xzYongHu(Integer roleId,String userName,String passwd,String telephone,String email,ModelMap model){
		if(!StringUtils.isEmpty(userName)){
			Integer nameCount = userService.nameCheck(userName);
			if(nameCount != null && nameCount > 0){
				String msg="用户名已存在";
				model.put("msg", msg);
				model.put("userName", userName);
				model.put("roleId",roleId);
				model.put("passwd", passwd);
				model.put("telephone", telephone);
				model.put("email", email);
				return "xinzengyonghu";
			}
		}
		User user = new User();
		user.setRoleId(roleId);
		user.setUserName(userName==null?null:userName.trim());
		user.setPasswd(passwd==null?null:passwd.trim());
		user.setEmail(email==null?null:email.trim());
		user.setTelephone(telephone==null?null:telephone.trim());
		
		userService.insertSelective(user);
		return "redirect:yonghuguanli.do"; 
	}
	//用户修改
	@RequestMapping("/yh_xiugaiview.do")
	public String yhXiuGaiView(Integer id,ModelMap model,HttpServletResponse response){

		User user = userService.getUserById(id);
		if(user != null){
			model.put("user",user );
		}
		return "yonghuxiugai";
	}
	@RequestMapping("/yh_xiugai.do")
	public String yhXiuGai(Integer id,Integer roleId,String userName,String passwd,String telephone,String email,ModelMap model){
		if(!StringUtils.isEmpty(userName) && id!= null){
			Integer nameCount = userService.updateNameCheck(userName,id);
			if(nameCount != null && nameCount > 0){
				String msg="用户名已存在";
				model.put("msg", msg);
				model.put("userName", userName);
				model.put("roleId",roleId);
				model.put("passwd", passwd);
				model.put("telephone", telephone);
				model.put("email", email);
				return "yonghuxiugai";
			}
		}
		User user = new User();
		user.setRoleId(roleId);
		user.setId(id);
		user.setUserName(userName==null?null:userName.trim());
		user.setPasswd(passwd==null?null:passwd.trim());
		user.setEmail(email==null?null:email.trim());
		user.setTelephone(telephone==null?null:telephone.trim());
		userService.updateByPrimaryKeySelective(user);
		return "redirect:yonghuguanli.do"; 
	}
	//用户删除
	@RequestMapping("/yh_shanchu.do")
	public String yhShanChu(Integer id){
		if(id != null){
			userService.delete(id);
		}
		
		return "redirect:yonghuguanli.do";
	}
	
	/**
	 *首页
	 */
	@RequestMapping("/shouye.do")
	public String shouYe(ModelMap model){
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		String mon = String.valueOf(year);
		String monMsg = String.valueOf(year) + "年";
		model.put("mon", monMsg);
		List<Map<String,Object>> suiFangList = suiFangKuGuanLiService.suiFangListByMonth(mon);
		if(suiFangList != null && suiFangList.size()>0){
			for(Map<String,Object> suiFang:suiFangList){
				Integer nianLin = DateUtil.getNianLing(DateUtil.convertString2Date(suiFang.get("blChushengDate").toString()));
				suiFang.put("nianLing", nianLin);
			}
		}
		model.put("suiFangList", suiFangList);
		return "shouye";
	}
}
