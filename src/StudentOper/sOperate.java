package StudentOper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpSession;
import util.MyDate;
import dao.Student;
import dateBase.DBManager;

public class sOperate 
{
	HttpSession session=null;
	DBManager dbm=new DBManager();
	Connection con=null;
    boolean boo=false;
    PreparedStatement ps=null;
    Statement st=null;
    ResultSet rs=null;
    static  int id=0;
	//ע��
	public boolean SRegister(Student stu)
	{
		con=dbm.getCon();
		String sql="INSERT INTO  student (username,pwd,realname,age,sex,birthday," +
				"university,email,major,xueli,jianli)VALUES('"
			+stu.getName()+"','"+stu.getPwd()+"','"+stu.getRealname()+"',"
			+stu.getAge()+",'"+stu.getSex()+"','"+stu.getBirthday()+"','"
			+stu.getUniversity()+"','"+stu.getMajor()+"','"
            +stu.getEmail()+"','"+stu.getMajor()+"','"+stu.getJianli()+"')";
		System.out.println("ѧ��ע��---------"+sql);		
		try {
			ps = con.prepareStatement(sql);
			int a  = ps.executeUpdate();
			if(a>0)
			{   
				doLogin(stu.getName(),stu.getPwd(),"student");
				boo = true;
			}
		} catch (SQLException e) {
			System.out.println("ѧ��ע��ʧ��");
			e.printStackTrace();
		}finally{
			dbm.Close(null, null, con, ps);
		}
		return boo;		
	}
	//��¼
	public int doLogin(String name,String pwd,String status)
	{
		String sql="select * from "+status+" where username='"+name+"'and pwd='"+pwd+"'";
		System.out.println("��¼-------"+sql);
		try {
			st=dbm.getCon().createStatement();
			rs=st.executeQuery(sql);
			if(rs.next())
			{
				id=rs.getInt("id");
				return id;			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			dbm.Close(null,null, con, ps);
		}		
		return id;	
	}
	//�޸�ѧ����Ϣ
	public boolean findStu(Student stu)
	{
		System.out.println("-------id-------"+id);
		String sql="UPDATE student SET pwd='"+stu.getPwd()+"',realname='"+stu.getRealname()
		+"',age='"+stu.getAge()+"',sex='"+stu.getSex()
		+"',birthday='"+stu.getBirthday()+"',university='"+stu.getUniversity()
		+"',email='"+stu.getEmail()+"',major='"+stu.getMajor()
		+"',xueli='"+stu.getXueli()+"',jianli='"+stu.getJianli()+
		"' WHERE username='"+stu.getName()+"';";
		System.out.println("�޸�ѧ����Ϣ------------"+sql);
		try {
			ps=dbm.getCon().prepareStatement(sql);
			int i=ps.executeUpdate();
			if(i>0)
			{
				boo=true;
			}
		} catch (SQLException e) {
			System.out.println("�޸�ѧ����Ϣʧ��------------");
			e.printStackTrace();
		}
		
		return boo;		
	}
    //������ְ��Ϣ
	public boolean Announce(Student stu){
		 System.out.println("---Announce----id-------"+id);
		 MyDate date=new MyDate();
		 String sql="INSERT INTO stuannounce(userid,posi,salary,indate,remark,specialty,mydate)" +
		 		"VALUES ("+id+",'"+stu.getPosition()+"','"+stu.getSalary()+"','"+stu.getDate()+"','"
		 		+stu.getRemark()+"','"+stu.getSpecialty()+"','"+date.getDate()+"')";
		 System.out.println("--������ְ��Ϣ-------"+sql);
		 try {
			ps=dbm.getCon().prepareStatement(sql);
			int i=ps.executeUpdate();
			 if(i>0)
			 {
				 boo=true;
			 }
		} catch (SQLException e) {
			System.out.println("--������ְ��Ϣʧ��-----");
			e.printStackTrace();
		}	 
		return boo;		
	}
	//��ѯ��ְ��Ϣ
	public ResultSet findInfo()
	{
		Student student = null;
		String sql="select * FROM stuannounce WHERE userid="+id+";";
		try {
			st=dbm.getCon().createStatement();
			rs=st.executeQuery(sql);		
		} catch (SQLException e) {
			System.out.println("--ɾ����ְ��Ϣʧ��-------");
			e.printStackTrace();
		}finally{
			dbm.Close(rs, st, con, ps);
		}
		return rs;
	}
    //ɾ����ְ��Ϣ
	public boolean DeleteInfo(int id)
	{
		String sql="DELETE FROM stuannounce WHERE id="+id+";";
		System.out.println("---ɾ����ְ��Ϣ----------"+sql);
		try {
			ps=dbm.getCon().prepareStatement(sql);
			int i=ps.executeUpdate();
			if(i>0)
			{
				boo=true;
			}
		} catch (SQLException e) {
			System.out.println("--ɾ����ְ��Ϣʧ��-------");
			e.printStackTrace();
		}finally
		{
			dbm.Close(rs, st, con, ps);
		}
		return boo;
	}
	//��ѯѧ����ְ��Ϣ
	public ResultSet findResume()
	{		
		String sql="SELECT * FROM stuannounce ORDER BY mydate desc";
		try {
			st=dbm.getCon().createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("----��ѯѧ����ְ��Ϣ--------");
			e.printStackTrace();
		}
		return rs;		
	}
	//��ѯѧ����ְ��ϸ��Ϣ
	public Student findDetailInfo(int id)
	{
		Student stu=new Student();
		String sql="select * from student where id="+id;
		try {
			st=dbm.getCon().createStatement();
			rs=st.executeQuery(sql);
			if(rs.next())
			{
				stu.setRealname(rs.getString("realname"));
		        stu.setSex(rs.getString("sex"));
		        stu.setEmail(rs.getString("email"));
		        stu.setMajor(rs.getString("major"));
		        stu.setUniversity(rs.getString("university"));
		        stu.setXueli(rs.getString("xueli"));
		        stu.setBirthday(rs.getString("birthday"));
		        
				String sql1="select * from stuannounce where userid="+id;
				System.out.println("��ѯѧ����ְ��ϸ��Ϣ--------"+sql1);				
			    ResultSet rs1=st.executeQuery(sql1);
			    if(rs1.next())
			    {
			    stu.setSpecialty(rs1.getString("specialty"));
			    stu.setPosition(rs1.getString("posi"));
			    stu.setSalary(rs1.getString("salary"));
			    stu.setTime(rs1.getString("mydate"));
			    stu.setDate(rs1.getInt("indate"));
			    }
			}
		} catch (SQLException e) {
			System.out.println("��ѯѧ����ְ��ϸ��Ϣʧ��--------");
			e.printStackTrace();
		}finally
		{
			dbm.Close(rs, st, con, ps);
		}
		return stu;
		
	}
	
	
	
	
	
	
	
	
	
	
}
