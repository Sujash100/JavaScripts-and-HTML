<%@include file="connect.jsp" %>
<%
String cid=(String)session.getAttribute("customerid");
out.println("Customer Id  "+cid);
%>
<%
String dept=(String)session.getAttribute("idept");
out.println("idept= "+dept);
%>
<center>
<%
try{
int iid=Integer.parseInt(request.getParameter("itemid"));
out.println("Item id"+iid);
	PreparedStatement pst=con.prepareStatement("delete from addtocart where iid=? and cid=?");
	pst.setInt(1,iid);
	pst.setString(2,cid);
        int t=pst.executeUpdate();
	if(t>0)
	out.println("<br><br><h4>Item Removed Successfully");	
  }
catch(Exception e){out.println(e);}
%>
<a href=viewcart.jsp?>Go Back<br></a>
<a href=usshoppage.jsp?dept=<%=dept%>><br><br>Goto Shopping<br><br></a>					
</form>