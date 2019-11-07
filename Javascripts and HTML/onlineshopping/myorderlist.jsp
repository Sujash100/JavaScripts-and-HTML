<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<%
String cid=(String)session.getAttribute("customerid");
out.println("Customer Id  "+cid);
%>
<%
String dept=(String)session.getAttribute("idept");
out.println("idept= "+dept);
%>
<center>
<a href=usshoppage.jsp?dept=<%=dept%>><br><br>Goto Shopping<br><br></a>
</center>
<%
try{
int orderid=0;

	PreparedStatement pst=con.prepareStatement("select * from orderlist where cid=?");
	pst.setString(1,cid);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
out.println("<br><br><br>Order Id:");
orderid=rs.getInt(1);
out.println(orderid);
out.println("<br>Customer Address:");
out.println(rs.getString(2));
out.println("<br>Customer's Phone Number:");
out.println(rs.getString(3));
out.println("<br>Item Quantity:");
out.println(rs.getString(4));
out.println("<br>Item Price:");
out.println(rs.getString(5));
out.println("<br>Total Price:");
out.println(rs.getString(6));
out.println("<br>Item will be delivered after 7 days from now.");
%>
<br><br>	
<a href=cancleorder.jsp?orderid=<%=orderid%>>Cancle This Order<br></a>				
<br><br>
<%
	}

	
	}
	catch(Exception e){out.println(e);}
%>
</form>