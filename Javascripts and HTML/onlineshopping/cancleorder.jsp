<%@include file="connect.jsp" %>
<%
String dept=(String)session.getAttribute("idept");
out.println("idept= "+dept);
%>
<%
String cid=(String)session.getAttribute("customerid");
out.println("Customer Id  "+cid);
%>
<%
try{
int oid=Integer.parseInt(request.getParameter("orderid"));
out.println("order id"+oid);
	PreparedStatement pst=con.prepareStatement("delete from orderlist where cid=? and oid=?");
	pst.setString(1,cid);
	pst.setInt(2,oid);
        int t=pst.executeUpdate();
	if(t>0)
	out.println("<br><br><h4>Order Cancled successfully");	
  }
catch(Exception e){out.println(e);}
%>
<a href=usshoppage.jsp?dept=<%=dept%>><br><br>Goto Shopping<br><br></a>
<a href=myorderlist.jsp?>Back</a>				
</form>