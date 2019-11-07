package bankop;
import java.sql.*;

class Connect
{
    Connection con=null;
    public Connection c1() 
     {
	  try{
	Class.forName("oracle.jdbc.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","scott","tiger");
	  }
	  catch(Exception e){}
	  return con;
     }
}