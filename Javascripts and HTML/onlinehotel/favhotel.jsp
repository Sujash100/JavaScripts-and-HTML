<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>

<center>

<%
String hname="";
String imagesrc="";
String hid="";
String cid=(String)session.getAttribute("customerid");

    try{
        PreparedStatement pst=con.prepareStatement("select * from favlist where cid=?");
	pst.setString(1,cid);
	ResultSet rs=pst.executeQuery();
        while(rs.next())
	{
	  hid=rs.getString(2);
out.println(".");



      
      PreparedStatement pst1=con.prepareStatement("select * from hotellist where hid='"+hid+"'");
	ResultSet rs1=pst1.executeQuery();
	while(rs1.next())
	{
		imagesrc=(rs1.getString(18));
		hname=(rs1.getString(2));
%>
<br><br>


		<img src=<%=imagesrc%> width="250"height="150"float:left; />

<h3>
<%
		out.println("Hotel ");
                out.println(hname);
%>
<a href=more.jsp?hid=<%=hid%>><img src=more.jpg width="40"height="40"/></a>
<%
                
         }

	}
}
	catch(Exception e){out.println(e);}
%>