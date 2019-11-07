<%@include file="imenu.html" %>
<%@include file="connect.jsp" %>

<%
	int iid=Integer.parseInt(request.getParameter("iid"));
	String iname=request.getParameter("iname");
	String idept=request.getParameter("idept");
	String idetails=request.getParameter("idetails");
	String iprice=request.getParameter("iprice");
	String ibrand=request.getParameter("ibrand");
	String mdetails=request.getParameter("mdetails");
	String idiscount=request.getParameter("idiscount");
	String iimage=request.getParameter("iimage");
	try{
	PreparedStatement pst=con.prepareStatement("insert into itemstore values(?,?,?,?,?,?,?,?,?)");
	pst.setInt(1,iid);
	pst.setString(2,iname);
	pst.setString(3,idept);
	pst.setString(4,idetails);
	pst.setString(5,iprice);
	pst.setString(6,ibrand);
	pst.setString(7,mdetails);
	pst.setString(8,idiscount);
	pst.setString(9,iimage);
	int t=pst.executeUpdate();
	if(t>0)
	out.println("Item inserted successfully");
	con.close();
	}
	catch(Exception e){}
%>
	