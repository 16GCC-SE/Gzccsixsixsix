<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/left.css" rel="stylesheet" type="text/css">
<script src="../js/default.js"></script>
</head>
<body topmargin="0px">

<table width="100%" height="500"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="top">
     <form name="form" method="post" action="mreginfo.jsp">
    <table width="500" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5f7f7">
     
        <tr align="center">
          <td height="27" colspan="2" bgcolor="#21536A"><div id="reg">�޸�ע����Ϣ</div></td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">��&nbsp;��&nbsp;����</td>
          <td width="300"></td>
        </tr>
        <tr>
          <td height="22" align="center">�޸����룺</td>
          <td><input type="password" name="password"></td>
        </tr>
        <tr>
          <td height="22" align="center">����ȷ�ϣ�</td>
          <td><input type="password" name="rpassword"></td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">��ҵ���ƣ�</td>
          <td width="300">
            <input type="text" name="name" value="">
          </td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">�����ʼ���</td>
          <td width="300">
            <input type="text" name="email" value="">
          </td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">��ϵ�绰��</td>
          <td width="300">
            <input name="tel" type="text" id="tel" value="">
          </td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">������ҵ��</td>
          <td width="300">
            <input name="manage" type="text" id="manage" value="">
          </td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">��ҵ��ַ��</td>
          <td width="300">
            <input name="address" type="text" id="address" value="">
          </td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">��˾��飺</td>
          <td width="300">
            <textarea name="resume" cols="35" rows="5"></textarea>
          </td>
        </tr>
        <tr align="center">
          <td height="35" colspan="2"><input type="submit" name="Submit" value="�޸�" onClick="return reg()">
&nbsp;&nbsp;
        <input type="reset" name="Reset" value="����"></td>
        </tr>   
    </table></form></td>
  </tr>
</table>

</body>
</html>