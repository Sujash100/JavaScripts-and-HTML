<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>
<%
   try{
        int hid=Integer.parseInt(request.getParameter("hid"));
	PreparedStatement pst=con.prepareStatement("delete from hotellist where hid=?");
	pst.setInt(1,hid);
        int t=pst.executeUpdate();
	if(t>0)
	out.println("Hotel Deleted Successfully");
	con.close();
	}
catch(Exception e){}
%>