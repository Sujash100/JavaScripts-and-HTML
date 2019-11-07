<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<form action=checkavail.jsp method=post>
<center>
<%
String bid=request.getParameter("bid");
String hname="";
String source="";

  try{
String imagesrc="";
      
      PreparedStatement pst=con.prepareStatement("select * from booklist where bid=?");
	pst.setString(1,bid);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		imagesrc=(rs.getString(8));
%>
<br><br>


		<img src=<%=imagesrc%> width="300"height="150"float:left; />

<h3>
<%
                out.println(rs.getString(2));

	source=(rs.getString(7));
	out.println("<br><a href = " + source + ">View Book<br></a>");
		
                
         }
}		
catch(Exception e){out.println(e);}
%>
</center>
</form>