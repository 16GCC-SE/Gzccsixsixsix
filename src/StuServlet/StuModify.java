package StuServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import StudentOper.sOperate;

import dao.Student;

public class StuModify extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("gbk");
		PrintWriter out = response.getWriter();
		 //获取页面数据
		 String pwd=request.getParameter("password");
		 String rename=request.getParameter("name");
		 String age=request.getParameter("age");
		 String sex=request.getParameter("sex");
		 String birthday=request.getParameter("birthday");
		 String school=request.getParameter("school");
		 String major=request.getParameter("specialty");
		 String xueli=request.getParameter("knowledge");
		 String email=request.getParameter("email");
		 String resume=request.getParameter("resume");
		 String name = (String) request.getSession().getAttribute("name");
		
		 //将获取的数据放入Student类
		 Student stu=new Student();
		 stu.setName(name);
		 stu.setPwd(pwd);
		 stu.setRealname(rename);
		 stu.setAge(Integer.parseInt(age));
		 stu.setSex(sex);
		 stu.setBirthday(birthday);
		 stu.setUniversity(school);
		 stu.setMajor(major);
		 stu.setXueli(xueli);
		 stu.setEmail(email);
		 stu.setJianli(resume);
		 //将获取的数据添加到数据库
		 sOperate so=new sOperate();
		 boolean boo=so.findStu(stu);
		 if(boo)
		 {
			response.sendRedirect("student/login.jsp"); 
		 }else{
			 response.sendRedirect("student/reginfo.jsp"); 
		 }
	}

}
