<%@include file="imenu.html" %>
<%@include file="connect.jsp" %>
<%
   try{
        int iid=Integer.parseInt(request.getParameter("iid"));
	PreparedStatement pst=con.prepareStatement("delete from itemstore where iid=?");
	pst.setInt(1,iid);
        int t=pst.executeUpdate();
	if(t>0)
	out.println("Item Deleted Successfully");
	con.close();
	}
catch(Exception e){}
%>