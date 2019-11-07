<%@include file="imenu.html" %>
<%@include file="connect.jsp" %>
<form action=insertitemsuc.jsp method=post>
<center>
<%
	int iid=0;
	try{
		PreparedStatement pst=con.prepareStatement("select max(iid) from itemstore");
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		iid=rs.getInt(1);
		con.close();
	   }
	    catch(Exception  e){}
	iid++;
%>
<table border=2>
<tr>
	<td>Item id</td>
	<td><input type=hidden name=iid value=<%=iid%>><%=iid%></td>
</tr>
<tr>
	<td>Item Name</td>
	<td><input type=text name=iname></td>
</tr>
<tr>
	<td>Item Department</td>
	<td><input type=text name=idept></td>
</tr>
<tr>
	<td>Item Details </td>
	<td><textarea name=idetails rows=3 cols=16></textarea></td>
</tr>
<tr>
	<td>Item Price</td>
	<td><input type=text name=iprice></td>
</tr>
<tr>
	<td>Item brand</td>
	<td><input type=text name=ibrand></td>
</tr>
<tr>
	<td>More Details</td>
	<td><textarea name=mdetails rows=6 cols=16></textarea></td>
</tr>
<tr>
	<td>Discount</td>
	<td><input type=text name=idiscount></td>
</tr>
<tr>
	<td>Item Pic</td>
	<td><input type=text name=iimage></td>
</tr>
<tr>
	<td colspan=2 align=center><input type=submit value=Insert></td>
</tr>
</table></form></body></html>

