<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>
<%
	try{
	int bid=Integer.parseInt(request.getParameter("bid"));
	PreparedStatement pst=con.prepareStatement("select * from booklist where bid=?");
	pst.setInt(1,bid);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{

	int bid1=rs.getInt(1);
String bname=rs.getString(2);
String btype=rs.getString(3);
String aname=rs.getString(4);
String pname=rs.getString(5);
String edition=rs.getString(6);
String source=rs.getString(7);
String img=rs.getString(8);



%>
	<form action=updatebooksuc.jsp method=post>
	<pre>
bid	<input type=text name=bid value=<%=bid%> readonly>
bname	<input type=text name=bname value=<%=bname%>>
btype	<input type=text name=btype value=<%=btype%>> 
aname<input type=text name=aname value=<%=aname%>>
pname	<input type=text name=pname value=<%=pname%>> 
edition	<input type=text name=edition value=<%=edition%>>
source	<input type=text name=source value=<%=source%>> 
img	<input type=text name=img value=<%=img%>>




	<input type=submit value=update>
<%
	}
	else
	out.println("Invalid bid");
	}
	catch(Exception e){out.println(e);}
%>
