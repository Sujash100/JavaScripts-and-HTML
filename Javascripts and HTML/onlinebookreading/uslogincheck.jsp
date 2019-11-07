<%@include file="connect.jsp" %>
<%
String cid=request.getParameter("cid");
session.setAttribute("customerid",cid);
%>
<%
	try{
	PreparedStatement pst=con.prepareStatement("select * from userlist where cid=? and cpass=?");
	pst.setString(1,request.getParameter("cid"));
	pst.setString(2,request.getParameter("cpass"));
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("cid",rs.getString(1));
		session.setAttribute("cname",rs.getString(2));
		response.sendRedirect("us1.jsp");
	}
	else
	{
%>
<font color=red>Invalid Userid or password</font>
<%@include file="uslogin.html"%>
<%
	}
	con.close();
	}
	catch(Exception e){}
%>
	