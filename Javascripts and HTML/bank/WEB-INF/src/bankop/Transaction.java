package bankop;
import java.sql.*;
public class Transaction implements Admin,Customer
{

	int accno;
	public void setAccno(int accno)
	{
	   this.accno=accno;
        }
        public int dw(String mode,double amt)
	{
	  int t=0;
	   try{
		Connect c=new Connect();
		Connection con=c.c1();
	        PreparedStatement pst=con.prepareStatement("select tid,bal from bank_tran where tid=(select max(tid) from bank_tran where accno=?) and accno=?");
	         pst.setInt(1,accno);
	         pst.setInt(2,accno);
		ResultSet rs=pst.executeQuery();
		int tid=0;
	         double bal=0;
	         if(rs.next())
	          {
			tid=rs.getInt(1);
			bal=rs.getDouble(2);
		  }
		  tid++;
		java.util.Date ob=new java.util.Date();
		String dt1=ob.toString();
		double damt=0,wamt=0;
		if(mode.equals("deposit"))
		 {
		    damt=amt;
		     bal=bal+amt;
		 }
	        else
	       {
		   wamt=amt;
		   bal=bal-amt;
		}
		PreparedStatement pst1=con.prepareStatement("insert into bank_tran values(?,?,?,?,?,?)");
		pst1.setInt(1,accno);
		pst1.setInt(2,tid);
		pst1.setString(3,dt1);
		pst1.setDouble(4,damt);
		pst1.setDouble(5,wamt);
		pst1.setDouble(6,bal);
		t=pst1.executeUpdate();
		con.close();
		}
		catch(Exception e){}
		return t;
	    }
	    public double balchk()
	     {
		double bal=0;
	   try{
		Connect c=new Connect();
		Connection con=c.c1();
	        PreparedStatement pst=con.prepareStatement("select tid,bal from bank_tran where tid=(select max(tid) from bank_tran where accno=?) and accno=?");
	         pst.setInt(1,accno);
	         pst.setInt(2,accno);
		ResultSet rs=pst.executeQuery();
		  if(rs.next())
		   bal=rs.getDouble(2);
		  con.close();
	       }
	        catch(Exception e){}
		return bal;
	    }
	   public ResultSet mini()
	    {
		ResultSet rs=null;
		try{
		 Connect c=new Connect();
		Connection con=c.c1();
		PreparedStatement pst=con.prepareStatement("select * from bank_tran where accno=? order by tid");
		  pst.setInt(1,accno);
		  rs=pst.executeQuery();
		  }
		  catch(Exception e){}
		 return rs;
	  
	  }
		
}
		

		