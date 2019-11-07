<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<%
	String uname=(String)session.getAttribute("cname");
	out.println("<h4>Welcome "+uname);
%>
<form action=usshoppage.jsp method=post>
<center>
Select Department<select name=dept>
<option></option>
<%
    try{
        PreparedStatement pst=con.prepareStatement("select distinct idept from itemstore");
	ResultSet rs=pst.executeQuery();
        while(rs.next())
	{
	  String dept=rs.getString(1);
%>
<option value="<%=dept%>"><%=dept%></option>
<%
	}
	con.close();
	}
	catch(Exception e){}
%>
</select>
<input type=submit value=Submit>
</form>