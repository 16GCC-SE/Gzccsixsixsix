<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="StudentOper.*,dateBase.DBManager" %>
<%@page import="java.sql.ResultSet,java.sql.Statement"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/default.css" rel="stylesheet" type="text/css">
</head>
<body background="images/bg.jpg">
<table  cellpadding="0"  cellspacing="0">
<tr><td><table  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="5" height="36" background="images/gbnavl.gif"></td>
    <td width="1199" background="images/gbnavm.gif"><a href="student/index.htm">ѧ��ע��</a> <a href="company/index.htm">��ҵע��</a></td>
    <td width="4" background="images/gbnavr.gif"></td>
  </tr>
</table>
</td></tr>
<tr><td><table width="100%" height="74"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="63" align="center" valign="middle" bordercolor="#EBEDEC"  bgcolor="#EBEDEC"><div id="top"> <img src="images/top.gif" width="340" height="38"></div>
     </td>
  </tr>
</table>
</td></tr>
<tr><td><table width="100%" height="400"  border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="1031" valign="top" bordercolor="#E8EAE9" bgcolor="#FFFFFF"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr align="center" >
        <td width="50%" height="22"><div id="font1">ѧ����ְ</div></td>
        <td width="50%" height="22"><div id="font1">��ҵ��Ƹ</div></td>
      </tr>
      <tr>
        <td valign="top"><table width="100%" height="55"  border="0" cellpadding="0" cellspacing="0">

      <tr>
        <td valign="top"><table width="514" border="1">
            <tr>
              <td width="117" height="28" align="center">��ְ��ҵ</td>
              <td width="152" align="center">����ְλ</td>
              <td width="94" align="center">ѧ��</td>
              <td colspan="2" align="center">��ҵԺУ</td>
	                </tr>
             <%
		ResultSet rs=new sOperate().findResume();
		while(rs.next())
		{		
		String position=rs.getString("posi");
		System.out.println("------posi-----"+position);
		String specialty=rs.getString("specialty");
		System.out.println("------spec-----"+specialty);
		int id=rs.getInt("userid");
		System.out.println("-----id----"+id);
		Statement st=null;
		DBManager dbm=new DBManager();		
		try{
		   st=dbm.getCon().createStatement();
		   ResultSet rs1=st.executeQuery("select * from student where id="+id);
		    if(rs1.next())
		    {
		%>
		   <tr>
              <td height="27" align="center"><%=specialty %></td>
              <td align="center"><%=position %></td>
              <td align="center"><%=rs1.getString("xueli") %></td>
              <td width="83" align="center"><%=rs1.getString("university") %></td>
			  <td width="34"><a href="StuDetailInfo?did=<%=id%>">��ϸ</a></td>
            </tr>	
		 <%
		    }		
		  }catch(Exception e)
		   {		
		      out.print("û��ѧ��������ְ��Ϣ");	
		      e.printStackTrace();
		   }
		}
		 %>			
          </table></td>
      </tr>
    </table></td>
        <td valign="top"><table width="517" height="61" border="1">
          <tr>
            <td width="101" align="center">��ҵ����</td>
            <td width="136" align="center">��Ƹְλ</td>
            <td width="257" align="center">��ƸҪ��</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
    <td width="170" rowspan="2" valign="top" bgcolor="#F5f7f7"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
        <td>		
		<form name="form1" method="post" action="StuLogin">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="22" colspan="2" align="center"  background="images/tdbg.jpg"><div id="font1">��¼���</div></td>
          </tr>        
          <tr>
            <td width="37%" height="22" align="center">�û�����</td>
            <td width="63%">
              <input name="username" type="text" size="12">
            </td>
          </tr>
          <tr>
            <td height="22" align="center">��&nbsp;&nbsp;�룺</td>
            <td height="22"><input name="password" type="password" size="12"></td>
          </tr>
          <tr align="center">
            <td height="30" colspan="2">
              <input name="select" type="radio" value="student" checked >
              ѧ��
              <input type="radio" name="select" value="company">
              ��ҵ</td>
          </tr>
          <tr align="center">
            <td height="30" colspan="2">
              <input type="submit" name="Submit2" value="����">
              &nbsp;
              <input name="Submit" type="reset" value="����"></td>
          </tr>    
        </table></form></td>
      </tr>
     
    </table></td>
  </tr>
</table>
<table width="100%" height="50"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1"bgcolor="#FFFFFF"><hr size="1" color="#CC3300" style="position:absolute;"></td>
  </tr>
</table></td></tr>

</table>




</body>
</html>