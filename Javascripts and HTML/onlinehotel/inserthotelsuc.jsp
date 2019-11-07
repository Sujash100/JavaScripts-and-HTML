<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>

<%
	int hid=Integer.parseInt(request.getParameter("hid"));
String hname=request.getParameter("hname");
String htype=request.getParameter("htype");
String hdetails=request.getParameter("hdetails");
String fourb=request.getParameter("fourb");
String hprice1=request.getParameter("hprice1");
String threeb=request.getParameter("threeb");
String hprice2=request.getParameter("hprice2");
String doubleb=request.getParameter("doubleb");
String hprice3=request.getParameter("hprice3");
String singleb=request.getParameter("singleb");
String hprice4=request.getParameter("hprice4");
String hloc=request.getParameter("hloc");
String mdetails=request.getParameter("mdetails");
String hdiscount=request.getParameter("hdiscount");
String hnum=request.getParameter("hnum");
String hmail=request.getParameter("hmail");
String hpic=request.getParameter("hpic");


	try{
	PreparedStatement pst=con.prepareStatement("insert into hotellist values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
pst.setInt(1,hid);
pst.setString(2,hname);
pst.setString(3,htype);
pst.setString(4,hdetails);
pst.setString(5,fourb);
pst.setString(6,hprice1);
pst.setString(7,threeb);
pst.setString(8,hprice2);
pst.setString(9,doubleb);
pst.setString(10,hprice3);
pst.setString(11,singleb);
pst.setString(12,hprice4);
pst.setString(13,hloc);
pst.setString(14,mdetails);
pst.setString(15,hdiscount);
pst.setString(16,hnum);
pst.setString(17,hmail);
pst.setString(18,hpic);



	int t=pst.executeUpdate();
	if(t>0)
	out.println("Hotel inserted successfully");
	con.close();
	}
	catch(Exception e){}
%>
	