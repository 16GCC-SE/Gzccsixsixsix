<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="StudentOper.sOperate,java.sql.ResultSet" %>
<%@page import="java.sql.SQLException"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/left.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0px">
<table width="100%" height="500"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="top"> <table width="500" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5f7f7">
	  <tr align="center">
	    <td height="27" colspan="4" bgcolor="#21536A"><div id="reg">删除求职信息</div></td>
	  </tr>
	  <tr>
	    <td height="22" align="center">所求职位</td>
	    <td align="center">发布时间</td>
	    <td align="center">有效时间</td>
	    <td align="center">删除 </td>
	  </tr>
	  <%
	  sOperate so=new sOperate(); 
	  ResultSet rs= so.findInfo();
	  while(rs.next())
	  {
	  %>
		<tr>
	    <td height="22" align="center"><%=rs.getString("posi")%></td>
	    <td align="center"><%=rs.getString("date")%><br></td>
	    <td align="center"><%=rs.getString("indate")%><br></td>
	    <td align="center"><a href="../StuDelete?intId=<%=rs.getInt("id") %>">删除</a></td>
	  </tr>
		<%
	  }
	   %>
	 
      </table></td>
  </tr>
</table>
</body>
</html>