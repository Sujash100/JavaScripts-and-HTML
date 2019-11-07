<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>
<form action=inserthotelsuc.jsp method=post>
<center>
<%
	int hid=0;
	try{
		PreparedStatement pst=con.prepareStatement("select max(hid) from hotellist");
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		hid=rs.getInt(1);
		con.close();
	   }
	    catch(Exception  e){}
	hid++;
%>
<table border=2>
<tr>
	<td>Hotel id</td>
	<td><input type=hidden name=hid value=<%=hid%>><%=hid%></td>
</tr>
<tr>
	<td>Hotel Name</td>
	<td><input type=text name=hname></td>
</tr>
<tr>
	<td>Hotel Type</td>
	<td><input type=text name=htype></td>
</tr>
<tr>
	<td>Hotel Details </td>
	<td><textarea name=hdetails rows=3 cols=16></textarea></td>
</tr>
<tr>
	<td>Four Beded Rooms</td>
	<td><input type=text name=fourb></td>
</tr>
<tr>
	<td>Rent Price</td>
	<td><input type=text name=hprice1></td>
</tr>
<tr>
	<td>Three Beded Rooms</td>
	<td><input type=text name=threeb></td>
</tr>
<tr>
	<td>Rent Price</td>
	<td><input type=text name=hprice2></td>
</tr>
</tr>
<tr>
	<td>Double Beded Rooms</td>
	<td><input type=text name=doubleb></td>
</tr>
<tr>
	<td>Rent Price</td>
	<td><input type=text name=hprice3></td>
</tr>
<tr>
	<td>Single Beded Rooms</td>
	<td><input type=text name=singleb></td>
</tr>
<tr>
	<td>Rent Price</td>
	<td><input type=text name=hprice4></td>
</tr>
<tr>
	<td>Hotel Location</td>
	<td><input type=text name=hloc></td>
</tr>
<tr>
	<td>More Details</td>
	<td><textarea name=mdetails rows=6 cols=16></textarea></td>
</tr>
<tr>
	<td>Discount</td>
	<td><input type=text name=hdiscount></td>
</tr>
<tr>
	<td>Hotel Phone Number</td>
	<td><input type=text name=hnum></td>
</tr>
<tr>
	<td>Hotel Email</td>
	<td><input type=text name=hmail></td>
</tr>
<tr>
	<td>Hotel Pics</td>
	<td><input type=text name=hpic></td>
</tr>

<tr>
	<td colspan=2 align=center><input type=submit value=Insert></td>
</tr>
</table></form></body></html>

