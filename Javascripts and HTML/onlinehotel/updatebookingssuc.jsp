<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>

<%
	int hid=Integer.parseInt(request.getParameter("hid"));
String rtype=request.getParameter("rtype");
String rid=request.getParameter("rid");
String avl=request.getParameter("avl");
out.println(avl);
String cidate=request.getParameter("cidate");
String codate=request.getParameter("codate");


	try{
	PreparedStatement pst=con.prepareStatement("insert into checklist values(?,?,?,?,?,?)");
pst.setInt(1,hid);
pst.setString(2,rtype);
pst.setString(3,rid);
pst.setString(4,avl);
pst.setString(5,cidate);
pst.setString(6,codate);


	int t=pst.executeUpdate();
	if(t>0)
	out.println("Booking Updated successfully");
	con.close();
	}
	catch(Exception e){}
%>