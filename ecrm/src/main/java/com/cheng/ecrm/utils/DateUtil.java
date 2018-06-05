package com.cheng.ecrm.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
	
	/*
	 * 将出生日期转换为年龄
	 */
	public static Integer getNianLing(Date dateOne){
		if(dateOne == null){
			return null;
		}
		
		Date dateTwo = new Date();
        int reVal = 0;
        int numOne = 0;
        int numTwo = 0;
        Calendar calOne = Calendar.getInstance();
        Calendar calTwo = Calendar.getInstance();
        calOne.setTime(dateOne);
        calTwo.setTime(dateTwo);
        numTwo = calTwo.get(Calendar.YEAR);
        numOne = calOne.get(Calendar.YEAR);
        reVal = numTwo - numOne;
        return reVal;
     }
	
	/*
	 * 将yyyy-MM-dd字符串转换为日期格式
	 */
	public static Date convertString2Date(String dateStr){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = sdf.parse(dateStr);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}
	/*
	 * 将yyyy-MM-dd日期格式转换为字符串
	 */
	public static String convertDate2String(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(date == null){
			date = new Date();
		}
		String dateStr = sdf.format(date);
		return dateStr;
	}
	/*
	 * 将yyyy-MM日期格式转换为字符串
	 */
	public static String convertDate2StringMon(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		if(date == null){
			date = new Date();
		}
		String dateStr = sdf.format(date);
		return dateStr;
	}

	/**
	 * data转calendar
	 * @param date
	 * @return
	 */
	public static Calendar dataToCalendar(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }
}
