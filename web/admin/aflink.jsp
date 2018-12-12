<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/left.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="0px">
<table width="98%" height="500"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="50" align="center"><div id="font">友情链接管理</div></td>
  </tr>
  <tr>
    <td valign="top">
    <form method="post">
    <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5f7f7">
      <tr align="center" bgcolor="#21536A">
	<td height="22"><div id="reg">链接名称</div></td>
	<td ><div id="reg">链接地址</div></td>
	</tr>
	
   <tr align="center">
	<td height="27"><input type="text" name="name"></td>
	<td><input name="address" type="text"></td>
	</tr>
   <tr align="center">
	<td height="27" colspan="2"><input name="Submit" type="submit" value="提交"></td>
	</tr>
    <tr>
	<td colspan="2">&nbsp;</td>
      </tr>
    </table></form></td>
  </tr>
</table>
</body>
</html>
