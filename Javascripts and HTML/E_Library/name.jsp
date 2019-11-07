<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<%
	String uname=(String)session.getAttribute("cname");
	out.println("<h4>Welcome "+uname);
%>
<form action=uschoosebookbyname.jsp method=post>
<center><br><br><br><br>

	Enter Book Name <input type=text name=bname>
	Enter Author's Name <input type=text name=aname>
	<input type=submit value=Search>
</html>	
