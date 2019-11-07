<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<form action=cart.jsp method=post>
<%
String cid=(String)session.getAttribute("customerid");
out.println("Customer Id  "+cid);
%>

<%
out.println("<br><h2>Customer Information:");
%>
<center>
<%
try{
int q=Integer.parseInt(request.getParameter("quantity"));
double wd=Double.parseDouble(request.getParameter("wd"));
String iname=request.getParameter("iname");
String addr="";
String num="";
double tp=0;


	
	PreparedStatement pst=con.prepareStatement("select * from userlist where cid=?");
	pst.setString(1,cid);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		
		out.println("<br><h3>Item will be delivered to:");
                out.println(rs.getString(2));
                out.println("<br>Delivary Address:");
		addr=rs.getString(4);
		out.println(addr);
		out.println("<br>Phone Number:");
		num=rs.getString(6);
		out.println(rs.getString(6));
		
	
%>
</center>
<%
out.println("<br><h2>Item Information:");
%>
<center>
<%

	}
	out.println("<h3>Item Name: "+iname);
	out.println("<br><br><font color=blue>Item Price: "+wd);
	out.println("</font><h3>Quantity="+q);
	if(wd<=500.00)
		{
		tp=q*wd+60.50;
		out.println("<h3>+Delivary charge Rs.60.50");
	out.println("<h2></font><font color=red>Total Price Rs: "+tp);
		}
		else
		{
		out.println("<br><h4>FREE DELIVARY");
		}
%>
<pre><br><br>
<a href=cart.jsp?cnum=<%=num%>&q=<%=q%>&wd=<%=wd%>&tp=<%=tp%>>Confirm</a><br><br><br>
<%
}
catch(Exception e){out.println(e);}

%>
