<%@include file="connect.jsp" %>
<font color=black>
<%
try{
String imagesrc="";

PreparedStatement pst=con.prepareStatement("select * from imagelist where imid=1");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
	out.println("The imid is:");
	out.println(rs.getString(1));
	imagesrc=(rs.getString(2));
	out.println("thae image source is:"+imagesrc);
        
%>
<img src=<%=imagesrc%> width=300"height="200"/>
<br><br><br>
<%
}

	
}
	catch(Exception e){out.println(e);}
%>	