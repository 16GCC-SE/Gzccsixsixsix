package StuServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import StudentOper.sOperate;

import dao.Student;

public class StuSendInfo extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("gb2312");
		response.setContentType("text/html;");
		PrintWriter out = response.getWriter();
		//��ȡҳ������
		String specialty=request.getParameter("specialty");
		System.out.println("-----specialty------"+specialty);
		String position=request.getParameter("job");
		System.out.println("-----position------"+position);
		String salary=request.getParameter("emolument");
		System.out.println("-----emolument-----"+salary);	
		int date=Integer.parseInt(request.getParameter("atime"));
		
		String remark=request.getParameter("other");
		
		//����ȡ�����ݷ���Student��
		Student stu=new Student();
		stu.setSpecialty(specialty);
		stu.setPosition(position);
		stu.setSalary(salary);
		stu.setDate(date);
		stu.setRemark(remark);		
		//����ȡ��������ӵ����ݿ�
		sOperate  so=new sOperate ();
		boolean boo=so.Announce(stu);
		if(boo==true)
		{
			response.sendRedirect("student/login.htm");
		}else
			response.sendRedirect("student/ajobinfo.jsp");
	}

}
