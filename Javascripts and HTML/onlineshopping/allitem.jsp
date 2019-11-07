<%@include file="connect.jsp" %>
<%@include file="imenu.html" %>
<font color=black>
<%
try{
PreparedStatement pst=con.prepareStatement("select * from itemstore");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		out.println("<br>Item Id:");
		out.println(rs.getString(1));
		out.println("<br>Item Name:");
                out.println(rs.getString(2));
                out.println("<br>Item Departmnt:");
		out.println(rs.getString(3));
		out.println("<br>Item Details:");
		out.println(rs.getString(4));
		out.println("</font><br>Item Brand:");
		out.println(rs.getString(6));
		out.println("<br>Item Price:");
		out.println(rs.getDouble(5));
		out.println("<br>Discount:</font>");
		out.println(rs.getDouble(8));
		out.println("%");

	
%>
<br><br><br></font>
<%
}

	
}
	catch(Exception e){out.println(e);}
%>		