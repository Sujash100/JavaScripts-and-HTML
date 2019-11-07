<%@include file="connect.jsp" %>
<%@include file="cmenu.html"%>
<%
try{
String cid=(request.getParameter("cid"));
out.println("cid"+cid);
	PreparedStatement pst=con.prepareStatement("delete from userlist where cid=?");
	pst.setString(1,cid);
        int t=pst.executeUpdate();
	if(t>0)
	out.println("<br><br><h4>Customer Kicked successfully");	
  }
catch(Exception e){out.println(e);}
%>
<a href=usercontrolbyadmin.jsp?><br><br>Go Back<br><br></a>				
</form>