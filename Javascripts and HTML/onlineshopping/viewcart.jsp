<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<center>
<h2>...YOUR CART...</h2>
<br><br><br>
<%
String cid=(String)session.getAttribute("customerid");

%>
<%
String dept=(String)session.getAttribute("idept");
%>
<%
int iid=0;
int itemid=0;
try{
String imagesrc="";
	PreparedStatement pst=con.prepareStatement("select * from itemstore where iid in (select iid from addtocart where cid=?)");
	pst.setString(1,cid);
	
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
				imagesrc=(rs.getString(9));
%>
		<img src=<%=imagesrc%> width=200"height="100"/>

<%


                itemid=Integer.parseInt(rs.getString(1));
		out.println("<br><h3>Item Name:");
                out.println(rs.getString(2));
                out.println("<br>Item Departmnt:");
		out.println(rs.getString(3));
		out.println("<br>Item Details:");
		out.println(rs.getString(4));
		out.println("</font><br>Item Brand:");
		out.println(rs.getString(6));
		out.println("<br><font color=red>Item Price:</font>");
		out.println(rs.getDouble(5));
		out.println("<br><font color=green>Discount:</font>");
		out.println(rs.getDouble(8));
		out.println("%");
		
		
%>		
<pre>
<a href=more.jsp?iid=<%=itemid%>>More Details<br></a><br>
<a href=deletefromcart.jsp?itemid=<%=itemid%>>Remove From Cart<br></a><br>

</pre>
<%
 		

	}

	
	}
	catch(Exception e){out.println(e);}
%>
<a href=usshoppage.jsp?dept=<%=dept%>><br><br>Goto Shopping<br><br></a>
</form>
