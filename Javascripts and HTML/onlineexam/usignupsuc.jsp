<%@include file="connect.jsp" %>
<%
	try{
	PreparedStatement pst=con.prepareStatement("insert into exam_student values(?,?,?,?,?)");
	pst.setString(1,request.getParameter("croll"));
	pst.setString(2,request.getParameter("pass"));
	pst.setString(3,request.getParameter("name"));
	pst.setString(4,request.getParameter("dept"));
	pst.setString(5,request.getParameter("year"));
	int t=pst.executeUpdate();
	if(t>0)
	out.println("Register successfully");
	con.close();
	}
	catch(Exception e){}
%>
<a href=index.html>goto Home</a>