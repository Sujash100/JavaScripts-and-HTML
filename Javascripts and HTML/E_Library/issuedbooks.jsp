<%@include file="cmenu.html"%>
<%@include file="connect.jsp" %>

<%

String cid=request.getParameter("uid");
String idate="";
String uid="";
String bid1="";
String submit="";

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
bid1=rs.getString(2);
out.println(bid1);
%>
<br>
<%
out.println("Issue Date");
idate=rs.getString(3);
out.println(idate);
%>
<br>
<%
out.println("Submit Status :");
submit=rs.getString(4);
out.println(submit);
%>
<a href=update.jsp?bid1=<%=bid1%>&uid=<%=uid%>>Update..</a><br><br>
<%


        }
	con.close();
	}
	catch(Exception e){}
%>
