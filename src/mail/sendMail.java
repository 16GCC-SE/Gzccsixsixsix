package mail;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class sendMail extends HttpServlet{
 @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
	this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("gbk");
		PrintWriter out=resp.getWriter();
		String str[]=new String [10];
		for(int i=0;i<str.length;i++)
		{
		  str[i]=req.getParameter("from");
		  System.out.println("-----------------"+str[i]);
		}
		String content=req.getParameter("message");
		 System.out.println("---------message--------"+content);
		String title=req.getParameter("subject");
		 System.out.println("------subject-----------"+title);
		 //
	}

public String codetostring(String str)
 {
	 String s=str;
	 byte temp[];
	try {
		temp = s.getBytes("ISO-8859-1");
		 s=new String(temp);
	} catch (UnsupportedEncodingException e) {
		e.printStackTrace();
	}
	 return s;
}

}
