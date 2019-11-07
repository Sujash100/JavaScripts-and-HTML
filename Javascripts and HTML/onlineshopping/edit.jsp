<%@include file="imenu.html" %>
<%@include file="connect.jsp" %>
<%
	try{
	int iid=Integer.parseInt(request.getParameter("iid"));
	PreparedStatement pst=con.prepareStatement("select * from itemstore where iid=?");
	pst.setInt(1,iid);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{

	int iid1=rs.getInt(1);
	String iname=rs.getString(2);
	String idept=rs.getString(3);
	String idetails=rs.getString(4);
	String iprice=rs.getString(5);
	String ibrand=rs.getString(6);
	String mdetails=rs.getString(7);
        String idiscount=rs.getString(8);
%>
	<form action=updateitemsuc.jsp method=post>
	<pre>
	iid	<input type=text name=iid value=<%=iid%> readonly>
	iname	<input type=text name=iname value=<%=iname%>>
	idept	<input type=text name=idept value=<%=idept%>> 
	idetails<input type=text name=idetails value=<%=idetails%>>
	iprice	<input type=text name=iprice value=<%=iprice%>>
	ibrand	<input type=text name=ibrand value=<%=ibrand%>> 
	mdetails<input type=text name=mdetails value=<%=mdetails%>>
	idiscount<input type=text name=idiscount value=<%=idiscount%>>


	<input type=submit value=update>
<%
	}
	else
	out.println("Invalid iid");
	}
	catch(Exception e){out.println(e);}
%>
