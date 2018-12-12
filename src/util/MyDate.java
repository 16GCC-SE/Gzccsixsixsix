package util;

import java.util.Calendar;

public class MyDate
{ 
public String getDate()
{
      Calendar ca = Calendar.getInstance(); 
      int year = ca.get(Calendar.YEAR);//获取年份 
      int month=ca.get(Calendar.MONTH);//获取月份 
      int day=ca.get(Calendar.DATE);//获取日 
      int minute=ca.get(Calendar.MINUTE);//分 
      int hour=ca.get(Calendar.HOUR);//小时 
      int second=ca.get(Calendar.SECOND);//秒 
      
      String date = year + "-" + (month + 1 )+ "-" + day + " "+( hour + 8 )+ ":" + minute + ":" + second ; 
System.out.println(date);
return date;
} 
}