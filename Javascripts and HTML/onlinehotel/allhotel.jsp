<%@include file="connect.jsp" %>
<%@include file="hmenu.html" %>
<font color=black>
<%
try{
PreparedStatement pst=con.prepareStatement("select * from hotellist");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		out.println("<br>Hotel Id:");
		out.println(rs.getString(1));
		out.println("<br>Hotel Name:");
                out.println(rs.getString(2));
                out.println("<br>Hotel Type:");
		out.println(rs.getString(3));
		out.println("<br>Hotel Details:");
                out.println(rs.getString(4));

		out.println("<br>Four Beded Rooms:");
                out.println(rs.getString(5));
                out.println("<br>Rent per Four Beded Rooms:");
                out.println(rs.getString(6));

out.println("<br>Three Beded Rooms:");
out.println(rs.getString(7));
out.println("<br>Rent per Three Beded Rooms:");
out.println(rs.getString(8));

out.println("<br>Double Beded Rooms:");
out.println(rs.getString(9));
out.println("<br>Rent per Double Beded Rooms:");
out.println(rs.getString(10));


out.println("<br>Single Beded Rooms:");
out.println(rs.getString(11));
out.println("<br>Rent per Single Beded Rooms:");
out.println(rs.getString(12));
		
		out.println("<br>Hotel Location:");
		out.println(rs.getString(13));
		out.println("<br>More Details:");
		out.println(rs.getString(14));
		out.println("<br>Discount");
		out.println(rs.getString(15));
		out.println("%");

out.println("<br>Hotel Phone Number:");
out.println(rs.getString(16));
out.println("<br>Hotel's Email Address:");
out.println(rs.getString(17));
out.println("<br>Hotel's Picture:");
out.println(rs.getString(18));

	
%>
<br><br><br></font>
<%
}

	
}
	catch(Exception e){out.println(e);}
%>		