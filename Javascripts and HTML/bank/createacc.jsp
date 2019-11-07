
<%@include file="amenu.html" %>
<br><center>
<jsp:useBean id="ob" class="bankop.CreateAcc" scope="page" />

<%
	ob.genaccno();
	int accno=ob.getAccno();
	accno++;
%>
<form action=createacc1.jsp method=post>
<table border=2>
<tr>
	<td>Accno</td>
	<td><%=accno%></td>
</tr>
<tr>
	<td>Name</td>
	<td><input type=text name=name></td>
</tr>
<tr>
	<td>Address</td>
	<td><textarea name=address row=4 cols=12></textarea></td>
</tr>
<tr>
	<td>Phno</td>
	<td><input type=text name=phno></td>
</tr>
<tr>
	<td>Panno</td>
	<td><input type=text name=panno></td>
</tr>
<tr>
	<td>password</td>
	<td><input type=password name=password></td>
</tr>
<tr>
	<td>Oppbal</td>
	<td><input type=text name=oppbal></td>
</tr>
<tr>
	<td><input type=submit value=submit></td>
	<td><input type=reset value=reset></td>
</tr>
</table>
</form>