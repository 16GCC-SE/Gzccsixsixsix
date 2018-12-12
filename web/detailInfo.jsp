<%@ page contentType="text/html; charset=gb2312" language="java"  errorPage="" %>
<%@page import="dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>求职详细信息</title>
</head>

<body  background="images/bg.jpg">
<table cellpadding="0" cellspacing="0">
<tr><td><table width="1231"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="4" height="36" background="images/gbnavl.gif"></td>
    <td width="1245" background="images/gbnavm.gif"><a href="student/index.htm">学生注册</a> <a href="company/index.htm">企业注册</a></td>
    <td width="1" background="images/gbnavr.gif"></td>
  </tr>
</table>
</td></tr>
<tr><td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="50" align="center" bordercolor="#EBEDEC"  bgcolor="#EBEDEC"><div id="top"><img src="images/top.gif" width="340" height="38"></div></td>
  </tr>
</table>
</td></tr>
<tr><td valign="top"><table width="100%" border="0" align="center">
<%
		  Student stu=(Student)request.getAttribute("stu");	
			System.out.println("----jsp--------"+stu.equals(null));
		 %>
<tr>
  <td width="1035" align="center" valign="top" >  
  <table width="1035" border="1" bgcolor="#FFFFFF" cellpadding="0" cellspacing="0">
  <tr>
    <td height="29" colspan="4" align="center" bgcolor="#21536A"><div class="font">求职详细信息</div></td>
  </tr>
  <tr>
   <td width="183" height="30" align="right">姓名：</td>
   <td width="188" align="left"> <%=stu.getRealname() %>   </td>
   <td width="169" height="34" align="right" valign="middle">求职行业：</td>
   <td width="467" align="left"> <%=stu.getSpecialty() %></td>
  
  </tr>
  <tr>
    <td height="31" align="right">性别：</td>
    <td align="left"><%=stu.getSex() %>  </td>
	<td height="33" align="right" valign="middle"> 所求职位： </td>
    <td align="left"><%=stu.getPosition() %></td>
  </tr>
  <tr>
    <td height="35" align="right">出生日期：</td>
    <td align="left"><%=stu.getBirthday() %>   </td>
	 <td height="33" align="right" valign="middle">所求薪水：</td>
    <td align="left"><%=stu.getSalary() %></td>
  </tr>
  <tr>
    <td height="33" align="right" valign="middle">毕业院校：</td>
    <td align="left"> <%=stu.getUniversity() %></td>
	<td height="38" align="right" valign="middle">发部时间：</td>
    <td align="left"> <%=stu.getTime() %></td>
  </tr>
  <tr>
    <td height="33" align="right" valign="middle">所学专业：</td>
    <td align="left"><%=stu.getMajor() %></td>
	 <td height="38" align="right" valign="middle">有效期：</td>
    <td align="left"><%=stu.getDate() %></td>
  </tr>
  <tr>
    <td height="33" align="right" valign="middle">最高学历：</td>
    <td align="left"> <%=stu.getXueli() %></td>
	 <td height="35" align="right" valign="middle">电子邮件：</td>
    <td align="left"> <%=stu.getEmail() %></td>
  </tr>
  
   </table>  
  </td>
  <td width="191" valign="top" bgcolor="#F5f7f7">
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
        <td>		
		<form name="form1" method="post" action="StuLogin">
		<table width="98%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="22" colspan="2" align="center"  background="images/tdbg.jpg"><div id="font1">登录入口</div></td>
          </tr>        
          <tr>
            <td width="37%" height="22" align="center">用户名：</td>
            <td width="63%">
              <input name="username" type="text" size="12">
            </td>
          </tr>
          <tr>
            <td height="22" align="center">密&nbsp;&nbsp;码：</td>
            <td height="22"><input name="password" type="password" size="12"></td>
          </tr>
          <tr align="center">
            <td height="30" colspan="2">
              <input name="select" type="radio" value="student" checked > 学生
              <input type="radio" name="select" value="company"> 企业</td>
          </tr>
          <tr align="center">
            <td height="30" colspan="2">
              <input type="submit" name="Submit2" value="进入">
              &nbsp;
              <input name="Submit" type="reset" value="重置"></td>
          </tr>    
        </table></form></td>
      </tr></table>  
  </td>
  </tr>
</table><table width="100%" height="50"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1"bgcolor="#FFFFFF"><hr size="1" color="#CC3300" style="position:absolute;"></td>
  </tr>
</table>
</td></tr>
</table>
	




</body>
</html>
