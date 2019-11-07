<%@include file="connect.jsp" %>

<%
	try{
	PreparedStatement pst=con.prepareStatement("select * from exam_admin where adminid=? and password=?");
	pst.setString(1,request.getParameter("aid"));
	pst.setString(2,request.getParameter("apass"));
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
	session.setAttribute("aid",rs.getString(1));
	response.sendRedirect("adminhome.jsp");
	}
	else
	{
%>
<font color=red>Invalid Userid or password</font>
<%@include file="alogin.html"%>
<%
	}
	con.close();
	}
	catch(Exception e){}
%>
	
	