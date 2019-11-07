<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>
<form action=insertbooksuc.jsp method=post>
<center>
<%
	int bid=0;
	try{
		PreparedStatement pst=con.prepareStatement("select max(bid) from booklist");
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		bid=rs.getInt(1);
		con.close();
	   }
	    catch(Exception  e){}
	bid++;
%>
<table border=2>
<tr>
	<td>Book id</td>
	<td><input type=hidden name=bid value=<%=bid%>><%=bid%></td>
</tr>
<tr>
	<td>Book Name</td>
	<td><input type=text name=bname></td>
</tr>
<tr>
	<td>Book Type</td>
	<td><input type=text name=btype></td>
</tr>
<tr>
	<td>Author's Name </td>
	<td><textarea name=aname rows=3 cols=16></textarea></td>
</tr>
<tr>
	<td>Publisher:</td>
	<td><input type=text name=pname></td>
</tr>
<tr>
	<td>Edition</td>
	<td><input type=text name=edition></td>
</tr>
<tr>
	<td>Pdf file</td>
	<td><input type=text name=source></td>
</tr>
<tr>
	<td>Book Image</td>
	<td><input type=text name=img></td>
</tr>
<tr>
	<td colspan=2 align=center><input type=submit value=Insert></td>
</tr>
</table></form></body></html>

