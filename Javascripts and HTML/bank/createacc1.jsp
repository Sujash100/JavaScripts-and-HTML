<%@include file="amenu.html" %>
<jsp:useBean id="ob" class="bankop.CreateAcc" scope="page"/>
<jsp:setProperty name="ob" property="*" />
<%
	int t=ob.accCreate();
	if(t>0)
	out.println("Account created Successfully");
%>
	