<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<form action=buynow.jsp method=post>
<center>
<%

double wd=0,ap=0,dp=0;
String iname="";
  try{
String imagesrc="";
      String iid=request.getParameter("iid");
      PreparedStatement pst=con.prepareStatement("select * from itemstore where iid=?");
	pst.setString(1,iid);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
		{
imagesrc=(rs.getString(9));
%>
		<img src=<%=imagesrc%> width=200"height="100"/>
<%
		out.println("<br><h3>Item Name:");
		iname=rs.getString(2);
                out.println(rs.getString(2));
                out.println("<br>Item Departmnt:");
		out.println(rs.getString(3));
		out.println("<br><font color=red>Item Price:");
                ap=Double.parseDouble(rs.getString(5));
		out.println(rs.getDouble(5));
		out.println("</font><br>Item Brand:");
		out.println(rs.getString(6));
		out.println("<br><font color=green>Discount</font>");
		dp=Double.parseDouble(rs.getString(8));
		out.println(rs.getDouble(8));
		out.println("%");
		out.println("<br><h2><font color=blue>Description :</font>");
		out.println(rs.getString(7));
		wd=(ap-(ap*dp)/100);
		out.println("<br><h2>You just have to pay Rs."+wd);
		if(wd<=500.00)
		{
		out.println("<br><h4>+Delivary charges may apply.");
		}
		else
		{
		out.println("<br><h4>FREE DELIVARY");
		}
		}
          }

catch(Exception e){out.println(e);}
%>
<pre>
<input type=hidden name=wd value=<%=wd%>>
<input type=hidden name=iname value=<%=iname%>>
<h3>Enter Quantity:<input type=text name=quantity  size=3><br><br>
<input type=submit value=BUY_NOW><br><br>
</pre>
</form>