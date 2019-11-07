<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>

<center>

<%
String hname="";
String imagesrc="";
String hid="";
String rtype="";
String rid="";
String cidate;
String codate="";

String cid=(String)session.getAttribute("customerid");

    try{
        PreparedStatement pst=con.prepareStatement("select * from checklist where cid=?");
	pst.setString(1,cid);
	ResultSet rs=pst.executeQuery();
        while(rs.next())
	{
	  hid=rs.getString(1);
          out.println(".");
	  rtype=rs.getString(2);
	rid=rs.getString(3);
	cidate=rs.getString(5);
	codate=rs.getString(6);
out.println("Room Type:");
out.println(rtype);
%>
<br>
<%
out.println("Room No:");
out.println(rid);
%>
<br>
<%
out.println("Checkin Date:");
out.println(cidate);
%>
<br>
<%
out.println("checkout Date:");
out.println(codate);
%>
<br>
<%
      
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
<br>
<%

                
         }

	}
}
	catch(Exception e){out.println(e);}
%>