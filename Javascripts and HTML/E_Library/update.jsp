<%@include file="cmenu.html" %>
<%@include file="connect.jsp" %>

<%
String submit="YES";
String bid=request.getParameter("bid1");
String cid=request.getParameter("uid");
out.println(bid);
out.println(cid);
   try{


PreparedStatement pst=con.prepareStatement("update issue_b set submit=? where bid=? and cid=?");

pst.setString(1,submit);
pst.setString(2,bid);
pst.setString(3,cid);

        int t=pst.executeUpdate();
	if(t>0)
	out.println("Issue Updated Successfully");
	con.close();
	}
catch(Exception e){out.println(e);}
%>
<br>
<a href=checkissue.jsp?>Go Back..</a><br><br>
        