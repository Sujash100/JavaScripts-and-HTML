package bankop;

import java.sql.*;

public class LoginCheck
{
	String userid,password;
	public void setUserid(String userid)
	{
		this.userid=userid;
	}
	public void setPassword(String password)
	{
		this.password=password;
	}
	public String validate()
	{
		String actor="";
		try{
		Connect ob=new Connect();
		Connection con=ob.c1();
		PreparedStatement pst=con.prepareStatement("Select actor from bank_auth where userid=? and password=?");
		pst.setString(1,userid);
		pst.setString(2,password);
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		actor=rs.getString(1);
		con.close();
		}
		catch(Exception e){}
		return actor;
	}
}
		