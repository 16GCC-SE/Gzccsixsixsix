package util;

import java.util.Calendar;

public class MyDate
{ 
public String getDate()
{
      Calendar ca = Calendar.getInstance(); 
      int year = ca.get(Calendar.YEAR);//��ȡ��� 
      int month=ca.get(Calendar.MONTH);//��ȡ�·� 
      int day=ca.get(Calendar.DATE);//��ȡ�� 
      int minute=ca.get(Calendar.MINUTE);//�� 
      int hour=ca.get(Calendar.HOUR);//Сʱ 
      int second=ca.get(Calendar.SECOND);//�� 
      
      String date = year + "-" + (month + 1 )+ "-" + day + " "+( hour + 8 )+ ":" + minute + ":" + second ; 
System.out.println(date);
return date;
} 
}