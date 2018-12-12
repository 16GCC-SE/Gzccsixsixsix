package companyServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CompanyOper.COper;

import dao.Company;

public class Cregister extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//获取页面信息
		
		String cname=request.getParameter("cname");
		String pwd=request.getParameter("password");
		String company=request.getParameter("name");
		String email=request.getParameter("email");
		String tel=request.getParameter("tel");
		String industry=request.getParameter("namage");
		String address=request.getParameter("address");
		String jianli=request.getParameter("resume");
		
		//将数据存入Company
		Company com=new Company();
		com.setCname(cname);
		com.setAddress(address);
		com.setCompany(company);
		com.setEmail(email);
		com.setIndustry(industry);
		com.setJianli(jianli);
		com.setTel(tel);
		com.setPwd(pwd);
		//将数据存入数据库
		COper co=new COper();
		boolean boo=co.doRegister(com);
		if(boo){
			System.out.println("企业注册成功");
		}else
		{
			System.out.println("企业注册失败");
		}
		
		
		
		
	}	
}
