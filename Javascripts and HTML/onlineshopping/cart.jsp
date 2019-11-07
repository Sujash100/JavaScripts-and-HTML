<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<%
String cid=(String)session.getAttribute("customerid");
out.println("Customer Id  "+cid);

%>

<Center>
<h2><font color=blue>
You Have Successfully Purchase This Product
</font>
<%
	int oid=0;
	try{
		PreparedStatement pst=con.prepareStatement("select max(oid) from orderlist");
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		oid=rs.getInt(1);
		
	   }
	    catch(Exception  e){}
	oid++;
out.println("<br>Order Id:"+oid);
%>
<%
try{
String cadd="";
PreparedStatement pst1=con.prepareStatement("select * from userlist where cid=?");
	pst1.setString(1,cid);
	ResultSet rs1=pst1.executeQuery();
	if(rs1.next())
	{
                out.println("<br>Delivary Address:");
		cadd=rs1.getString(4);
		out.println(cadd);
        }

String num=request.getParameter("cnum");
out.println("<br>Customer's Phone Number:"+num);
int q=Integer.parseInt(request.getParameter("q"));
out.println("<br>Item Quantity:"+q);
String wd=request.getParameter("wd");
out.println("<br>Item Price:"+wd);
String tp=request.getParameter("tp");
out.println("<br>Total Price:"+tp);
out.println("<br>Item will be delivered after 7 days from now.");
PreparedStatement pst=con.prepareStatement("insert into orderlist values(?,?,?,?,?,?,?)");
	pst.setInt(1,oid);
	pst.setString(2,cadd);
	pst.setString(3,num);
	pst.setInt(4,q);
	pst.setString(5,wd);
	pst.setString(6,tp);
	pst.setString(7,cid);
	int t=pst.executeUpdate();
	if(t>0)
	out.println("<br><br><h4>Order Accepted successfully");
	else
	out.println("not inserted ");
%>
<a href=myorderlist.jsp?>View Orders<br></a>
<%
	
}
catch(Exception e){out.println(e);}

%>
