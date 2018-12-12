package StuServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Student;

import StudentOper.sOperate;

public class StuDetailInfo extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
         this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        response.setCharacterEncoding("gb2312");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int id=Integer.parseInt(request.getParameter("did"));
	    System.out.println("detail--------------"+id);
		sOperate so=new sOperate();
		
		Student stu=so.findDetailInfo(id);
		if(!stu.equals(null))
		{	
		request.setAttribute("stu", stu);
		request.getRequestDispatcher("detailInfo.jsp").forward(request, response);
		}else
		{
			response.sendRedirect("index.jsp");
		}
		
	    
	}

}
