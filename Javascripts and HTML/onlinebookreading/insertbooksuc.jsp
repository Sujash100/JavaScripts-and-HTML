<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>

<%
int bid=Integer.parseInt(request.getParameter("bid"));
String bname=request.getParameter("bname");
String btype=request.getParameter("btype");
String aname=request.getParameter("aname");
String pname=request.getParameter("pname");
String edition=request.getParameter("edition");
String source=request.getParameter("source");
String img=request.getParameter("img");



	try{
	PreparedStatement pst=con.prepareStatement("insert into booklist values(?,?,?,?,?,?,?,?)");
pst.setInt(1,bid);
pst.setString(2,bname);
pst.setString(3,btype);
pst.setString(4,aname);
pst.setString(5,pname);
pst.setString(6,edition);
pst.setString(7,source);
pst.setString(8,img);



	int t=pst.executeUpdate();
	if(t>0)
	out.println("Book inserted successfully");
	con.close();
	}
	catch(Exception e){}
%>
	