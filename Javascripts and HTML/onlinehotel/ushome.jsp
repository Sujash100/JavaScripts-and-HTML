<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<%
	String uname=(String)session.getAttribute("cname");
	out.println("<h4>Welcome "+uname);
%>
<form action=uschoosehotel.jsp method=post>
<center>
Select Hotel Type<select name=type>
<option></option>
<%
    try{
        PreparedStatement pst=con.prepareStatement("select distinct htype from hotellist");
	ResultSet rs=pst.executeQuery();
        while(rs.next())
	{
	  String type=rs.getString(1);
%>
<option value="<%=type%>"><%=type%></option>
<%
	}
	}
	catch(Exception e){out.println(e);}
%>
</select>
<br><br>
Select Hotel Location<select name=loca>
<option></option>
<%
    try{
        PreparedStatement pst1=con.prepareStatement("select distinct hloc from hotellist");
	ResultSet rs1=pst1.executeQuery();
        while(rs1.next())
	{
	  String loca=rs1.getString(1);
%>
<option value="<%=loca%>"><%=loca%></option>
<%
	}
	con.close();
	}
	catch(Exception e){out.println(e);}
%>
</select>
<br><br>
<input type=submit value=Submit>
</form>