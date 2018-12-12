package StuServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import StudentOper.sOperate;
import dao.Student;

public class StuRegis extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 response.setContentType("text/html");
		  request.setCharacterEncoding("gbk");
		  PrintWriter out = response.getWriter();
		  boolean boo;
		  //��ȡҳ������
		  String name=request.getParameter("sname");
		  String pwd=request.getParameter("password");
		  String realname=request.getParameter("name");
		  String sex=request.getParameter("sex"); 
		  String gender=null;
		   if(Integer.parseInt(sex)==1)
		   {
			   gender="��";
		   }else
		   {
			   gender="Ů";
		   }
		   System.out.println("----gender---------"+gender);
		  int age=Integer.parseInt(request.getParameter("age"));
		  String birthday=request.getParameter("birthday");
		  String university=request.getParameter("school");
		  String email=request.getParameter("email");
		  String major=request.getParameter("specialty");
		  String xueli=request.getParameter("knowledge");
		  String jianli=request.getParameter("resume");
		  //����ȡ�����ݷ���Student��
		  Student stu=new Student();
		  stu.setName(name);
		  stu.setPwd(pwd);
		  stu.setRealname(realname);
		  stu.setSex(gender);
		  stu.setAge(age);
		  stu.setBirthday(birthday);
		  stu.setUniversity(university);
		  stu.setEmail(email);
		  stu.setMajor(major);
		  stu.setXueli(xueli);
		  stu.setJianli(jianli);
		  //����ȡ��������ӵ����ݿ�
		  sOperate so=new sOperate ();
		  boo=so.SRegister(stu);
		  System.out.println("boo--------"+boo);
		  if(boo)
		  {
			 // System.out.println("ѧ��ע��ɹ�");
			  //ҳ����ת
			  response.sendRedirect("index.jsp");
			  
		  }else{
			  //System.out.println("ѧ��ע��ʧ��");
			//ҳ����ת
			  response.sendRedirect("student/index.htm");
		  }
		
	}

}
