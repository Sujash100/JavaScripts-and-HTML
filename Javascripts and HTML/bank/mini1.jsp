<%@include file="amenu.html" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="ob" class="bankop.Transaction" scope="page" />

<jsp:setProperty name="ob" property="*" />
<%
	try{
	ResultSet rs=ob.mini();
%>
<table border=2><tr>
<th>Tid</th><th>Date</th><th>Deposit</th><th>Withdrawl</th><th>balance</th></tr>
<%
	while(rs.next())
	{
%>
<tr><td><%=rs.getInt(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getDouble(4)%></td><td><%=rs.getDouble(5)%></td><td><%=rs.getDouble(6)%></td></tr>
<%
	}
	}
	catch(Exception e){}
%>
	
