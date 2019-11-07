<%@include file="connect.jsp" %>
<%@include file="umenu.html" %>
<html>
<font color=blue>
<font color=Green>
<%
String dept=request.getParameter("dept");
session.setAttribute("idept",dept);
out.println(dept);
%>
<form action=mdetails.jsp method=post>
<marquee style="height:20;width:200"scrollamount="200"scrolldelay="500"><h4>....Hello......</h4></marquee>
<center>
<%

     
	try{
	String imagesrc="";
	String idept=request.getParameter("dept");
	out.println("<h4>"+idept);
%><br><br><br><h3>
<%
	PreparedStatement pst=con.prepareStatement("select * from itemstore where idept=?");
	pst.setString(1,idept);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		imagesrc=(rs.getString(9));
%>
		<img src=imagesrc width="400"height="200"/>
<%
		out.println("<br>Item Name:");
                out.println(rs.getString(2));
		String iname=rs.getString(2);
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
<a href=more.jsp?iid=<%=iid%>><img src=more.jpg width="40"height="40"/></a>
<a href=addtocart.jsp?iid=<%=iid%>><img src=fav.jpg width="40"height="40"/><br></a><br><br><br>
<%
 		

	}

	
	}
	catch(Exception e){out.println(e);}
%>
</form>
