<%@include file="connect.jsp" %>
<%@include file="cmenu.html"%>
<%
String cid="";
	try{
	PreparedStatement pst=con.prepareStatement("select * from userlist");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		
		out.println("<br>Customer's Name:");
                out.println(rs.getString(1));
                out.println("<br>Customer Id:");
		cid=(rs.getString(2));
		out.println(rs.getString(2));
		out.println("<br>Customer Address:");
		out.println(rs.getString(4));
		out.println("</font><br>Customers Eid:");
		out.println(rs.getString(5));
		out.println("<br><font color=green>Phone Number:</font>");
		out.println(rs.getInt(6));
%>
<br><br>	
<a href=deleteuserbyadmin.jsp?cid=<%=cid%>>Remove This Customer:<br></a>				
<br><br>
<%
 		

	}

	
	}
	catch(Exception e){out.println(e);}
%>
</form>
