<%@include file="imenu.html" %>
<%@include file="connect.jsp" %>

<%
   try{
       int iid=Integer.parseInt(request.getParameter("iid"));
	out.println(iid);
	String iname=request.getParameter("iname");
	String idept=request.getParameter("idept");
	String idetails=request.getParameter("idetails");
        int iprice=Integer.parseInt(request.getParameter("iprice"));
	String ibrand=request.getParameter("ibrand");
	String mdetails=request.getParameter("mdetails");
       int idiscount=Integer.parseInt(request.getParameter("idiscount"));
	

PreparedStatement pst=con.prepareStatement("update itemstore set iname=?,idept=?,idetails=?,iprice=?,ibrand=?,mdetails=?,idiscount=? where iid=?");
	
	pst.setString(1,iname);
	pst.setString(2,idept);
	pst.setString(3,idetails);
	pst.setInt(4,iprice);
	pst.setString(5,ibrand);
	pst.setString(6,mdetails);
	pst.setInt(7,idiscount);
	pst.setInt(8,iid);
 
        int t=pst.executeUpdate();
	if(t>0)
	out.println("Item Updated Successfully");
	con.close();
	}
catch(Exception e){out.println(e);}
%>
        