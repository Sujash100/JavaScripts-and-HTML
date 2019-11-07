<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>
<%
   try{
        int bid=Integer.parseInt(request.getParameter("bid"));
	PreparedStatement pst=con.prepareStatement("delete from booklist where bid=?");
	pst.setInt(1,bid);
        int t=pst.executeUpdate();
	if(t>0)
	out.println("Book Deleted Successfully");
	con.close();
	}
catch(Exception e){}
%>