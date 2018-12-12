package StuServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import StudentOper.sOperate;

public class StuDelete extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
           this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("gbk");
		PrintWriter out = response.getWriter();
		String id=request.getParameter("intId");
		System.out.println("----id----"+id);
		sOperate  so=new sOperate ();
		boolean boo=so.DeleteInfo(Integer.parseInt(id));
		if(boo)
		{
			response.sendRedirect("student/vjobinfo.jsp");
		}
	}

}
