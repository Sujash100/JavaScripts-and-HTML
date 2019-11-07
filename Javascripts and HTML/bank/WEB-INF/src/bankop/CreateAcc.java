package bankop;
import java.sql.*;
public class CreateAcc
{
      int accno=0;
      String name,address,phno,panno,password;
      double oppbal;
      public void setAccno(int accno)
       {
	  this.accno=accno;
       }
        public int getAccno()
	{
		return accno;
	}
	public void setName(String name)
	{
		this.name=name;
	}
	public void setAddress(String address)
	{
		this.address=address;
	}
	public void setPhno(String phno)
	{
		this.phno=phno;
	}
	public void setPanno(String panno)
	{
		this.panno=panno;
	}
	public void setPassword(String password)
	{
		this.password=password;
	}
	public void setOppbal(double oppbal)
	{
		this.oppbal=oppbal;
	}
	public void genaccno()
	{
	   
	   try{
		Connect ob=new Connect();
		Connection con=ob.c1();
		PreparedStatement pst=con.prepareStatement("select max(accno) from bank_cust");
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		accno=rs.getInt(1);
		con.close();
	      }
	       catch(Exception e){}
	   }
	public int accCreate()
	{
	   int t=0;
	   try{
	    Connect c=new Connect();
	    Connection con=c.c1();
	   genaccno();
	   accno++;
	   String actor="customer";
	   PreparedStatement pst=con.prepareStatement("insert into bank_auth values(?,?,?)");
	   pst.setString(1,String.valueOf(accno));
	    pst.setString(2,password);
	    pst.setString(3,actor);
	   PreparedStatement pst1=con.prepareStatement("insert into bank_cust values(?,?,?,?,?)");
	    pst1.setInt(1,accno);
	    pst1.setString(2,name);
	    pst1.setString(3,address);
	    pst1.setString(4,phno);
	    pst1.setString(5,panno);
	    int tid=1;
	    java.util.Date ob=new java.util.Date();
	    String dt1=ob.toString();
	      double damt=oppbal;
	      double wamt=0;
	       
	      
	   PreparedStatement pst2=con.prepareStatement("insert into bank_tran values(?,?,?,?,?,?)");
	    pst2.setInt(1,accno);
	    pst2.setInt(2,tid);
	    pst2.setString(3,dt1);
	    pst2.setDouble(4,damt);
	    pst2.setDouble(5,wamt);
	    pst2.setDouble(6,oppbal);
	    int t1=pst.executeUpdate();
	    int t2=pst1.executeUpdate();
	    int t3=pst2.executeUpdate();
	     if(t1>0 && t2>0 && t3>0)
	       t=1;
	     con.close();
	    }
	    catch(Exception e){}
	    return t;
         } 
	   

}