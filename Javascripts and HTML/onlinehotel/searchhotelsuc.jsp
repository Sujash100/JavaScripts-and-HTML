<%@include file="connect.jsp" %>
<%@include file="umenu.html" %>
<center>
<%

	try{
	String hname=request.getParameter("hname");
	String imagesrc="";
	String hid="";
%><br><br><br><h3>
<%
	PreparedStatement pst=con.prepareStatement("select * from hotellist where hname=?");
	pst.setString(1,hname);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		imagesrc=(rs.getString(18));
		hid=rs.getString(1);
%>
<br><br>


		<img src=<%=imagesrc%> width="250"height="150"float:left; />

<h3>
<%
		out.println("Hotel ");
                out.println(hname);
%>
<a href=more.jsp?hid=<%=hid%>><img src=more.jpg width="40"height="40"/></a>
<%
                
	}

	
	}
	catch(Exception e){out.println(e);}
%>
</form>