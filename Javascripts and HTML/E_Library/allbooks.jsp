<%@include file="connect.jsp" %>
<%@include file="hmenu.html" %>
<font color=black>
<%
try{
PreparedStatement pst=con.prepareStatement("select * from booklist");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		out.println("<br>Book Id:");
		out.println(rs.getString(1));
		out.println("<br>Book Name:");
                out.println(rs.getString(2));
                out.println("<br>Book Type:");
		out.println(rs.getString(3));
		out.println("<br>Author's Name:");
                out.println(rs.getString(4));

		out.println("<br>Publisher:");
                out.println(rs.getString(5));
                out.println("<br>Edition:");
                out.println(rs.getString(6));


out.println("<br>Book's Picture:");
out.println(rs.getString(7));

	
%>
<br><br><br></font>
<%
}

	
}
	catch(Exception e){out.println(e);}
%>		