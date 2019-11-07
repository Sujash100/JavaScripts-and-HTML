<%@include file="connect.jsp" %>
<%
	try{
	PreparedStatement pst=con.prepareStatement("insert into userlist values(?,?,?,?,?,?)");
	pst.setString(1,request.getParameter("cname"));
	pst.setString(2,request.getParameter("cid"));
	pst.setString(3,request.getParameter("cpass"));
	pst.setString(4,request.getParameter("caddr"));
	pst.setString(5,request.getParameter("ceid"));
	pst.setInt(6,Integer.parseInt(request.getParameter("cpno")));
	int t=pst.executeUpdate();
	if(t>0)
	out.println("Register successfully");
	con.close();
	}
	catch(Exception e){out.println(e);}
%>
<a href=home.html>goto Home</a>