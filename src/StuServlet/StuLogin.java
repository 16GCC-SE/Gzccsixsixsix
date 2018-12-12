package StuServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import StudentOper.sOperate;

public class StuLogin extends HttpServlet {

	
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
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String status=request.getParameter("select");
		System.out.println("status-----------"+status);
		//将获取的数据添加到数据库
		sOperate  so=new sOperate ();
	    int id=so.doLogin(username, password, status);
	    System.out.println("id-----------"+id);
	    if(id!=0)
	    {
		HttpSession session=(HttpSession) request.getSession();				
		session.setAttribute("name",username);
		session.setAttribute("id",id);
		
		response.sendRedirect("student/login.jsp");
		}else
		{
			 response.sendRedirect("index.jsp");
		}
	}

}
