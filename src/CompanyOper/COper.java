package CompanyOper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.Company;
import dateBase.DBManager;

public class COper 
{
	DBManager dbm=new DBManager();
	Boolean boo=false;
//ע��
	public boolean doRegister(Company com)
	{
		
		String sql="INSERT INTO  student (cname,pwd,company,email,tel,industry,address,jianli)" +
				"VALUES("+com.getCname()+","+com.getPwd()+","+com.getCompany()+","
				+com.getEmail()+","+com.getTel()+","+com.getIndustry()+","+com.getAddress()+","+com.getJianli()+")";
		System.out.println("��ҵע��---------"+sql);
		try {
			PreparedStatement ps=dbm.getCon().prepareStatement(sql);
			boo=ps.execute();
		} catch (SQLException e) {
			System.out.println("��ҵע��ʧ��");
			e.printStackTrace();
		}	
		return boo;		
	}
}
