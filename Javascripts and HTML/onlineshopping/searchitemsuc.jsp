<%@include file="connect.jsp" %>
<%@include file="umenu.html" %>
<form action=mdetails.jsp method=post>
<center>
<%

	try{
	String iname=request.getParameter("iname");
%><br><br><br><h3>
<%
	PreparedStatement pst=con.prepareStatement("select * from itemstore where iname=?");
	pst.setString(1,iname);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		
		out.println("<br>Item Name:");
                out.println(rs.getString(2));
		String iid=rs.getString(1);
                out.println("<br>Item Departmnt:");
		out.println(rs.getString(3));
		out.println("<br>Item Details:");
		out.println(rs.getString(4));
		out.println("</font><br>Item Brand:");
		out.println(rs.getString(6));
		out.println("<br><font color=red>Item Price:</font>");
		out.println(rs.getDouble(5));
		out.println("<br><font color=green>Discount:</font>");
		out.println(rs.getDouble(8));
		out.println("%");
%>		
<pre>
<a href=more.jsp?iid=<%=iid%>>More Details<br></a><br><br><br>

<a href=buynow.jsp?iid=<%=iid%>>BUY NOW<br></a>
</pre>
<%
 		
	}

	
	}
	catch(Exception e){out.println(e);}
%>
</form>