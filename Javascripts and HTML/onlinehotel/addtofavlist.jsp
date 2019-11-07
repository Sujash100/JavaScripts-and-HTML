<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<%
String cid=(String)session.getAttribute("customerid");
out.println("Customer Id  "+cid);

%>
<%
String htype=(String)session.getAttribute("htype");
out.println("htype= "+htype);
%>
<center>
<%
int hid=0;
try{
String imagesrc="";
hid=Integer.parseInt(request.getParameter("hid"));
out.println("<br>Hotel Id:"+hid);
PreparedStatement pst1=con.prepareStatement("select * from hotellist where hid=?");
	pst1.setInt(1,hid);
	ResultSet rs1=pst1.executeQuery();
	while(rs1.next())
	{
		imagesrc=(rs1.getString(18));
%>
		<img src=<%=imagesrc%> width=200"height="100"/>

<%
}
PreparedStatement pst=con.prepareStatement("insert into favlist values(?,?)");
	pst.setString(1,cid);
	pst.setInt(2,hid);
	int t=pst.executeUpdate();
	if(t>0)
	out.println("<br><br><h4>Added to your favorite list .....");
	else
	out.println("not inserted ");
%>
<a href=viewhotel.jsp?>View Hotel<br></a>
<%	
}
catch(Exception e){out.println(e);}

%>
