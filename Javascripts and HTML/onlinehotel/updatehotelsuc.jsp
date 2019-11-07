<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>

<%
   try{
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

	

PreparedStatement pst=con.prepareStatement("update hotellist set hname=?,htype=?,hdetails=?,fourb=?,hprice1=?,threeb=?,hprice2=?,doubleb=?,hprice3=?,singleb=?,hprice4=?,hloc=?,mdetails=?,hdiscount=?,hnum=?,hmail=?,hpic=? where hid=?");

pst.setString(1,hname);
pst.setString(2,htype);
pst.setString(3,hdetails);
pst.setString(4,fourb);
pst.setString(5,hprice1);
pst.setString(6,threeb);
pst.setString(7,hprice2);
pst.setString(8,doubleb);
pst.setString(9,hprice3);
pst.setString(10,singleb);
pst.setString(11,hprice4);
pst.setString(12,hloc);
pst.setString(13,mdetails);
pst.setString(14,hdiscount);
pst.setString(15,hnum);
pst.setString(16,hmail);
pst.setString(17,hpic);
pst.setInt(18,hid);

        int t=pst.executeUpdate();
	if(t>0)
	out.println("Hotel Updated Successfully");
	con.close();
	}
catch(Exception e){out.println(e);}
%>
        