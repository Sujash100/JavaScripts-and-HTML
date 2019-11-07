<%@include file="connect.jsp" %>
<%@include file="umenu.html" %>
<html>
<font color=blue>
<font color=black>
<%
String type=request.getParameter("type");
session.setAttribute("htype",type);
%>
<form action=mdetails.jsp method=post>
<marquee style="height:20;width:200"scrollamount="200"scrolldelay="500"><h4>....Choose Your Hotel......</h4></marquee>

<h3>
<%

     
	try{
	String imagesrc="";
	String htype=request.getParameter("type");
	String hloc=request.getParameter("loca");
	out.println("List of available "+htype+" Hotels in "+hloc);
%><br><br><br>
<%
	PreparedStatement pst=con.prepareStatement("select * from hotellist where htype=? and hloc=?");
	pst.setString(1,htype);
	pst.setString(2,hloc);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		imagesrc=(rs.getString(18));
%>
<br><br>

<table width="100%" border="0">
  <tr>
<td width="50%">

		<img src=<%=imagesrc%> width="400"height="200"float:left; /></td>

<td><h3>
<%
		out.println("Hotel Name: ");
                out.println(rs.getString(2));
		String hname=rs.getString(2);
		String hid=rs.getString(1);
                out.println("<br>Hotel Type: ");
		out.println(rs.getString(3));
		out.println("<br>Hotel Location :");
		out.println(rs.getString(4));
		out.println("<font color=green><br>Discount Per Room :</font>");
		out.println(rs.getDouble(15));
		out.println("%");
		
		
%>
<br>
<a href=more.jsp?hid=<%=hid%>><img src=more.jpg width="40"height="40"/></a>		
<a href=addtofavlist.jsp?hid=<%=hid%>><img src=fav.jpg width="40"height="40"/><br></a><br><br><br>
</td></h3>
  </tr>
</table>


<%
 		

	}

	
	}
	catch(Exception e){out.println(e);}
%>
</form>
