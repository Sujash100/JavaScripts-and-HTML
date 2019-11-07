<%@include file="amenu.html" %>
<jsp:useBean id="ob" class="bankop.Transaction" scope="page" />
<jsp:setProperty name="ob" property="*" />


<%
	Double wamt=Double.parseDouble(request.getParameter("wamt"));
	int t=ob.dw("ramu",wamt);
	if(t>0)
	out.println("withdrawl successfully");
%>

	