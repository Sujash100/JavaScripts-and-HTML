<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>
<form action=updatebookingssuc.jsp method=post>
<center>

<table border=2>
<tr>
	<td>Hotel id</td>
	<td><input type=text name=hid></td>
</tr>


<tr>
	<td>rtype</td>
	<td><input type=text name=rtype></td>
</tr>
<tr>
	<td>Room id</td>
	<td><input type=text name=rid></td>
</tr>
<tr>
	<td>Availablity</td>
	<td><input type=text name=avl></td>
</tr>
<tr>
	<td>Checkin Date</td>
	<td><input type=text name=cidate></td>
</tr>
</tr>
<tr>
	<td>Checkout Date</td>
	<td><input type=text name=codate></td>
</tr>

<tr>
	<td colspan=2 align=center><input type=submit value=Insert></td>
</tr>
</table></form></body></html>

