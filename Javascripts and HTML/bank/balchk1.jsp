<%@include file="amenu.html" %>
<jsp:useBean id="ob" class="bankop.Transaction" scope="page" />
<jsp:setProperty name="ob" property="*" />

<%
	double bal=ob.balchk();
	out.println("<br><br>Your balance Is "+bal);
%>