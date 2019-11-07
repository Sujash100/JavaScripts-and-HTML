
<jsp:useBean id="ob" class="bankop.LoginCheck" scope="page" />
<jsp:setProperty name="ob" property="*" />

<%
	String actor=ob.validate();
	if(actor.equals("admin"))
	response.sendRedirect("Adminhome.jsp");
	else if(actor.equals("customer"))
	response.sendRedirect("Userhome.jsp");
	else
	{
%>
<font color=red>Invalid userid or password</font>
<%@include file="index.html" %>
<%
	}
%>