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
<marquee style="height:20;width:200"scrollamount="200"scrolldelay="500"><h4>....Select Your Book......</h4></marquee>

<h3>
<%

     
	try{
	String imagesrc="";
	String btype=request.getParameter("type");
	String aname=request.getParameter("aname");
	out.println("List of available "+btype+" Books by "+aname);
%><br><br><br>
<%
	PreparedStatement pst=con.prepareStatement("select * from booklist where btype=? and aname=?");
	pst.setString(1,btype);
	pst.setString(2,aname);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		imagesrc=(rs.getString(8));
%>
<br><br>

<table width="100%" border="0">
  <tr>
<td width="50%">

		<img src=<%=imagesrc%> width="400"height="200"float:left; /></td>

<td><h3>
<%
		out.println("Book Name: ");
                out.println(rs.getString(2));
		String bid=rs.getString(1);
                out.println("<br>Book Type: ");
		out.println(rs.getString(3));
		out.println("<br>Author's Name:");
		out.println(rs.getString(4));
		
		
%>
<br>
<a href=more.jsp?bid=<%=bid%>><img src=more.jpg width="40"height="40"/></a>		
<a href=addtofavlist.jsp?bid=<%=bid%>><img src=fav.jpg width="40"height="40"/><br></a><br><br><br>
</td></h3>
  </tr>
</table>


<%
 		

	}

	
	}
	catch(Exception e){out.println(e);}
%>
</form>
