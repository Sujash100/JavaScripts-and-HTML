<%@include file="umenu.html"%>
<%@include file="connect.jsp" %>

<%

String cid=(String)session.getAttribute("customerid");
String idate="";
String uid="";
String bid="";

try{
PreparedStatement pst1=con.prepareStatement("select * from issue_b where cid=?");
pst1.setString(1,cid);
	ResultSet rs=pst1.executeQuery();
        while(rs.next())
{
%>
<br><br>
<%
out.println("User Id");
uid=rs.getString(1);

out.println(uid);
%>
<br>
<%
out.println("Book Id:");
bid=rs.getString(2);
out.println(bid);
%>
<br>
<%
out.println("Issue Date");
idate=rs.getString(3);
out.println(idate);
%>
<br>
<%
out.println("Submitted");
idate=rs.getString(4);
out.println(idate);


        }
	con.close();
	}
	catch(Exception e){}
%>