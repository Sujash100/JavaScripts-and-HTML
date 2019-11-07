<%@include file="connect.jsp" %>
<%
	String uname=(String)session.getAttribute("name");
	out.println("<h4>Welcome "+uname);
%>
<form action=exam.jsp method=post>
Subject <select name=sub>
<option></option>
<%
	try{
	PreparedStatement pst=con.prepareStatement("select distinct SUBJECT from exam_question");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
	  String sub=rs.getString(1);
%>
<option value=<%=sub%>><%=sub%></option>
<%
	}
	con.close();
	}
	catch(Exception e){}
%>
</select>
<input type=submit value=click>
</form>