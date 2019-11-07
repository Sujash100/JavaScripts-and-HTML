
<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<%
String cid=(String)session.getAttribute("customerid");
out.println("Customer Id  "+cid);

%>

<center>
<%
int bid=0;
try{
String imagesrc="";
bid=Integer.parseInt(request.getParameter("bid"));
PreparedStatement pst1=con.prepareStatement("select * from booklist where bid=?");
	pst1.setInt(1,bid);
	ResultSet rs1=pst1.executeQuery();
	while(rs1.next())
	{
		imagesrc=(rs1.getString(8));
%>
		<img src=<%=imagesrc%> width=200"height="100"/>

<%
}
PreparedStatement pst=con.prepareStatement("insert into favbooklist values(?,?)");
	pst.setString(1,cid);
	pst.setInt(2,bid);
	int t=pst.executeUpdate();
	if(t>0)
	out.println("<br><br><h4>Added to your favorite list .....");
	else
	out.println("not inserted ");
%>
<a href=more.jsp?bid=<%=bid%>><img src=more.jpg width="40"height="40"/></a>
<%	
}
catch(Exception e){out.println(e);}

%>
