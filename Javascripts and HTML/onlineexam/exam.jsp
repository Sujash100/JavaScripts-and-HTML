<%@include file="connect.jsp" %>
<form action=result.jsp method=post>
<%
	try{
	String sub=request.getParameter("sub");
	PreparedStatement pst=con.prepareStatement("select * from exam_question where subject=?");
	pst.setString(1,sub);
	ResultSet rs=pst.executeQuery();
	int i=1;
	while(rs.next())
	{
	int qid=rs.getInt(1);
	String ques=rs.getString(3);
	String opta=rs.getString(4);
	String optb=rs.getString(5);
	String optc=rs.getString(6);
	String optd=rs.getString(7);
%>
<%=i%>)<%=ques%><br>
<input type=radio name=o<%=i%> value=<%=opta%>><%=opta%><br>
<input type=radio name=o<%=i%> value=<%=optb%>><%=optb%><br>
<input type=radio name=o<%=i%> value=<%=optc%>><%=optc%><br>
<input type=radio name=o<%=i%> value=<%=optd%>><%=optd%><br>
<input type=hidden name=q<%=i%> value=<%=qid%>>

<%
	i++;
	}
	session.setAttribute("total",String.valueOf(i));
	con.close();
	}
	catch(Exception e){}
%>
<input type=submit value=submit>
</form>

	