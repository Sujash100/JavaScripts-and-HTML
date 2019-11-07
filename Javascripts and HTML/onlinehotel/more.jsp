<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<form action=checkavail.jsp method=post>
<center>
<%
String hid=request.getParameter("hid");
String hname="";
  try{
String imagesrc="";
      
      PreparedStatement pst=con.prepareStatement("select * from hotellist where hid=?");
	pst.setString(1,hid);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		imagesrc=(rs.getString(18));
%>
<br><br>


		<img src=<%=imagesrc%> width="600"height="300"float:left; />

<h3>
<%
		out.println("Hotel ");
                out.println(rs.getString(2));
		
                
         }
}		
catch(Exception e){out.println(e);}
%>
</center>
<pre>
<input type=hidden name=hname value=<%=hname%>>
<input type=hidden name=hid value=<%=hid%>>
<h4>
Select Room Type:  Single Bed<input type=radio name=roomtype value="sb">  Double Bed<input type=radio name=roomtype value="db">  Three Bed<input type=radio name=roomtype value="tb">  Four Bed<input type=radio name=roomtype value="fb"><br><br>
Enter Checkin Date:<input type=date name=date><br><br>
Enter Checkout Date:<input type=date name=date1><br><br>
<input type=submit value=Submit><br><br>
</pre>
</form>