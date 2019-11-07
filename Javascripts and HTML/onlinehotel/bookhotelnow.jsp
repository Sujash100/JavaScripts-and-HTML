<%@include file="umenu.html" %>
<%@include file="connect.jsp" %>

<%
String cid=(String)session.getAttribute("customerid");
out.println(cid);
int hid=Integer.parseInt(request.getParameter("hid"));
out.println(hid);
int nor=Integer.parseInt(request.getParameter("number"));
String cidate=request.getParameter("date");
String codate=request.getParameter("date1");
String rtype=request.getParameter("roomtype");
String avl="";
int slno=0;
int flag=6;
String rid="";
out.println(nor);
out.println(cidate);
out.println(codate);

	try{
PreparedStatement pst=con.prepareStatement("select * from temp where cid=? order by slno");
        pst.setString(1,cid);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
	slno=rs.getInt(1);
	if(slno>nor)
	{
	out.println(".");
	}
	else
	{
	out.println("...");
	rid=rs.getString(2);
	out.println(rid);
	flag=rs.getInt(3);
	avl="n";
	if(flag==1)
	{
	out.println(".");
PreparedStatement pst1=con.prepareStatement("update checklist set cidate='"+cidate+"',codate='"+codate+"',avl='"+avl+"',cid='"+cid+"' where rid='"+rid+"' and hid=?");
        pst1.setInt(1,hid);
	int t=pst1.executeUpdate();
	if(t>0)
{
	out.println("<br><br><h4>updated into Database successfully");
}
}
if(flag==0)
{
out.println("....");
PreparedStatement pst1=con.prepareStatement("insert into checklist values(?,?,?,?,?,?,?)");
        pst1.setInt(1,hid);
	pst1.setString(2,rtype);
	pst1.setString(3,rid);
	pst1.setString(4,avl);
	pst1.setString(5,cidate);
	pst1.setString(6,codate);
	pst1.setString(7,cid);
	int t1=pst1.executeUpdate();
	if(t1>0)
	out.println("<br><br><h4>Inserted into database successfully");
	

}
}
}
	
PreparedStatement pst2=con.prepareStatement("delete from temp where cid=?");
        pst2.setString(1,cid);
	ResultSet rs2=pst2.executeQuery();
	}
	catch(Exception e){}

%>