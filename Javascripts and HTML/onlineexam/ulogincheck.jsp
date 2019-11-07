<%@include file="connect.jsp" %>
<%
	try{
	PreparedStatement pst=con.prepareStatement("select * from exam_student where croll=? and password=?");
	pst.setString(1,request.getParameter("croll"));
	pst.setString(2,request.getParameter("pass"));
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("croll",rs.getString(1));
		session.setAttribute("name",rs.getString(3));
		response.sendRedirect("studenthome.jsp");
	}
	else
	{
%>
<font color=red>Invalid Userid or password</font>
<%@include file="ulogin.html"%>
<%
	}
	con.close();
	}
	catch(Exception e){}
%>
	