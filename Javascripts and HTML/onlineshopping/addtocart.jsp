<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<%
String cid=(String)session.getAttribute("customerid");
out.println("Customer Id  "+cid);

%>
<%
String dept=(String)session.getAttribute("idept");
out.println("idept= "+dept);
%>
<center>
<%
int iid=0;
try{
String imagesrc="";
iid=Integer.parseInt(request.getParameter("iid"));
out.println("<br>Item Id:"+iid);
PreparedStatement pst1=con.prepareStatement("select * from itemstore where iid=?");
	pst1.setInt(1,iid);
	ResultSet rs1=pst1.executeQuery();
	while(rs1.next())
	{
		imagesrc=(rs1.getString(9));
%>
		<img src=<%=imagesrc%> width=200"height="100"/>

<%
}
PreparedStatement pst=con.prepareStatement("insert into addtocart values(?,?)");
	pst.setInt(1,iid);
	pst.setString(2,cid);
	int t=pst.executeUpdate();
	if(t>0)
	out.println("<br><br><h4>Added to Cart successfully.....");
	else
	out.println("not inserted ");
%>
<a href=viewcart.jsp?>View Cart<br></a>
<a href=usshoppage.jsp?dept=<%=dept%>><br><br>Goto Shopping<br><br></a>
<%	
}
catch(Exception e){out.println(e);}

%>
