<%@include file="connect.jsp" %>
<%@include file="omenu.html"%>
<%
try{
int oid=Integer.parseInt(request.getParameter("orderid"));
out.println("order id"+oid);
	PreparedStatement pst=con.prepareStatement("delete from orderlist where oid=?");
	pst.setInt(1,oid);
        int t=pst.executeUpdate();
	if(t>0)
	out.println("<br><br><h4>Order Cancled successfully");	
  }
catch(Exception e){out.println(e);}
%>
<a href=adminorderlist.jsp?><br><br>Go Back<br><br></a>				
</form>