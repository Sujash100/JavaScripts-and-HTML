<%@include file="amenu.html" %>
<jsp:useBean id="ob" class="bankop.Transaction" scope="page" />
<jsp:setProperty name="ob" property="*" />


<%
	Double damt=Double.parseDouble(request.getParameter("damt"));
	int t=ob.dw("deposit",damt);
	if(t>0)
	out.println("Deposited successfully");
%>

	