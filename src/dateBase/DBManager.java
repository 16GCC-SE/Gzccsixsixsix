package dateBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager 
{
 Connection con=null;
 //连接数据库
 public Connection getCon()
 {
	 try {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employment","root","root");
		//System.out.println("连接数据库成功！");
	 } catch (Exception e) {
		System.out.println("连接数据库出错！");
		e.printStackTrace();
	}
	return con;
	 
 }
 //断开连接
 public void Close(ResultSet rs,Statement st,Connection con,PreparedStatement ps)
 {
	 if(rs!=null)
	 {try {
		rs.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}if(st!=null)
	{
		try {
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}if(con!=null)
	{
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}if(ps!=null)
	{
		try {
			ps.close();
		} catch (SQLException e) {
					e.printStackTrace();
		}
	}
	 }
 }
 /*public static void main(String[] arg)
 {
	 DBManager  dbm=new DBManager ();
	Connection con= dbm.getCon();
 }*/
}
