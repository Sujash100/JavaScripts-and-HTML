<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>
<%
	try{
	int hid=Integer.parseInt(request.getParameter("hid"));
	PreparedStatement pst=con.prepareStatement("select * from hotellist where hid=?");
	pst.setInt(1,hid);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{

	int hid1=rs.getInt(1);
String hname=rs.getString(2);
String htype=rs.getString(3);
String hdetails=rs.getString(4);
String fourb=rs.getString(5);
String hprice1=rs.getString(6);
String threeb=rs.getString(7);
String hprice2=rs.getString(8);
String doubleb=rs.getString(9);
String hprice3=rs.getString(10);
String singleb=rs.getString(11);
String hprice4=rs.getString(12);
String hloc=rs.getString(13);
String mdetails=rs.getString(14);
String hdiscount=rs.getString(15);
String hnum=rs.getString(16);
String hmail=rs.getString(17);
String hpic=rs.getString(18);



%>
	<form action=updatehotelsuc.jsp method=post>
	<pre>
hid	<input type=text name=hid value=<%=hid%> readonly>
hname	<input type=text name=hname value=<%=hname%>>
htype	<input type=text name=htype value=<%=htype%>> 
hdetails<input type=text name=hdetails value=<%=hdetails%>>
fourb	<input type=text name=fourb value=<%=fourb%>> 
hprice1	<input type=text name=hprice1 value=<%=hprice1%>>
threeb	<input type=text name=threeb value=<%=threeb%>> 
hprice2	<input type=text name=hprice2 value=<%=hprice2%>>
doubleb	<input type=text name=doubleb value=<%=doubleb%>> 
hprice3	<input type=text name=hprice3 value=<%=hprice3%>>
singleb	<input type=text name=singleb value=<%=singleb%>> 
hprice4	<input type=text name=hprice4 value=<%=hprice4%>>
hloc	<input type=text name=hloc value=<%=hloc%>>
mdetails<input type=text name=mdetails value=<%=mdetails%>>
hdiscount<input type=text name=hdiscount value=<%=hdiscount%>>
hnum<input type=text name=hnum value=<%=hnum%>>
hmail<input type=text name=hmail value=<%=hmail%>>
hpic<input type=text name=hpic value=<%=hpic%>>



	<input type=submit value=update>
<%
	}
	else
	out.println("Invalid hid");
	}
	catch(Exception e){out.println(e);}
%>
