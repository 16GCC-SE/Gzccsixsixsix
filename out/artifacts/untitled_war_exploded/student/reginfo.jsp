<%@ page contentType="text/html; charset=gb2312" %>
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
     <form name="form" method="post" action="../StuModify">
    <table width="500" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5f7f7">       
          <tr align="center">
            <td height="27" colspan="2" bgcolor="#21536A"><div id="reg">�޸�ע����Ϣ</div></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">��&nbsp;��&nbsp;����</td>
            <td width="300"><%=session.getAttribute("name") %></td>
          </tr>
          <tr>
            <td height="22" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;�룺</td>
            <td><input type="password" name="password"></td>
          </tr>
          <tr>
            <td height="22" align="center">����ȷ�ϣ�</td>
            <td><input type="password" name="rpassword"></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">��ʵ������</td>
            <td width="300"><input type="text" name="name" value=""></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;�䣺</td>
            <td width="300"><input type="text" name="age" value=""></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
            <td width="300"><input type="radio" name="sex" value="1" >
              ��
              <input type="radio" name="sex" value=0 >
              Ů </td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">�������ڣ�</td>
            <td width="300"><input type="text" name="birthday" value="">
              ��-��-��</td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">��ҵѧУ��</td>
            <td width="300"><input type="text" name="school" value=""></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">��ѧרҵ��</td>
            <td width="300"><input type="text"  name="specialty" value=""></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">���ѧ����</td>
            <td width="300"><input type="text" name="knowledge"  value=""></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">�����ʼ���</td>
            <td width="300"><input type="text" name="email"value=""></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">���˼�����</td>
            <td width="300"><textarea name="resume" cols="35" rows="5"></textarea></td>
          </tr>
          <tr align="center">
            <td height="35" colspan="2"><input type="submit" name="Submit" value="�޸�" onClick="return reg()">
&nbsp;&nbsp;
              <input type="reset" name="Reset" value="����"></td>
          </tr>     
      </table> </form></td>
  </tr>
</table>

</body>
</html>