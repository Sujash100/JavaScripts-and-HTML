<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>
<center>
<br><br><br><h2>
<%

String cid=(String)session.getAttribute("customerid");
int bid=Integer.parseInt(request.getParameter("bid"));
String idate="";
String submit="NO";

try{
PreparedStatement pst=con.prepareStatement("select sysdate from dual");
ResultSet rs=pst.executeQuery();
if(rs.next())
{
idate=rs.getString(1);
}

PreparedStatement pst1=con.prepareStatement("insert into issue_b values(?,?,?,?)");
pst1.setString(1,cid);
pst1.setInt(2,bid);
pst1.setString(3,idate);
pst1.setString(4,submit:);

	int t=pst1.executeUpdate();
	if(t>0)
	out.println("Issued successfully");
	con.close();
	}
	catch(Exception e){}
%>

<a href=view.jsp?>View..</a><br><br>