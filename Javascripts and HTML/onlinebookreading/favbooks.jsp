<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>

<center>

<%
String bname="";
String imagesrc="";
String bid="";
String cid=(String)session.getAttribute("customerid");

    try{
        PreparedStatement pst=con.prepareStatement("select * from favbooklist where cid=?");
	pst.setString(1,cid);
	ResultSet rs=pst.executeQuery();
        while(rs.next())
	{
	  bid=rs.getString(2);
       



      
      PreparedStatement pst1=con.prepareStatement("select * from booklist where bid='"+bid+"'");
	ResultSet rs1=pst1.executeQuery();
	while(rs1.next())
	{
		imagesrc=(rs1.getString(8));
		bname=(rs1.getString(2));
		 out.println(bname);
%>
<br><br>


		<img src=<%=imagesrc%> width="250"height="150"float:left; />

<h3>
<a href=more.jsp?bid=<%=bid%>><img src=more.jpg width="40"height="40"/></a>
<%
                
         }

	}
}
	catch(Exception e){out.println(e);}
%>