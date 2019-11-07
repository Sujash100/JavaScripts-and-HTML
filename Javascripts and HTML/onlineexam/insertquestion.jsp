<%@include file="amenu.html" %>
<%@include file="connect.jsp" %>
<form action=insertquestionsuc.jsp method=post>
<center>
<%
	int qid=0;
	try{
		PreparedStatement pst=con.prepareStatement("select max(qid) from exam_question");
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		qid=rs.getInt(1);
		con.close();
	   }
	    catch(Exception  e){}
	qid++;
%>
<table border=1>
<tr>
	<td>Question id</td>
	<td><input type=hidden name=qid value=<%=qid%>><%=qid%></td>
</tr>
<tr>
	<td>Subject</td>
	<td><input type=text name=sub></td>
</tr>
<tr>
	<td>Question</td>
	<td><input type=text name=ques></td>
</tr>
<tr>
	<td>Option A</td>
	<td><input type=text name=opta></td>
</tr>
<tr>
	<td>Option B</td>
	<td><input type=text name=optb></td>
</tr>
<tr>
	<td>Option C</td>
	<td><input type=text name=optc></td>
</tr>
<tr>
	<td>Option D</td>
	<td><input type=text name=optd></td>
</tr>
<tr>
	<td>Cans</td>
	<td><input type=text name=cans></td>
</tr>
<tr>
	<td colspan=2 align=center><input type=submit value=Insert></td>
</tr>
</table></form></body></html>

