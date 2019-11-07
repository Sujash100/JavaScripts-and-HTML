<%@include file="hmenu.html" %>
<%@include file="connect.jsp" %>

<%
   try{
       int bid=Integer.parseInt(request.getParameter("bid"));
String bname=request.getParameter("bname");
String btype=request.getParameter("btype");
String aname=request.getParameter("aname");
String pname=request.getParameter("pname");
String edition=request.getParameter("edition");
String source=request.getParameter("source");
String img=request.getParameter("img");

out.println(bid);	

PreparedStatement pst=con.prepareStatement("update booklist set bname=?,btype=?,aname=?,pname=?,edition=?,source=?,img=? where bid=?");

pst.setString(1,bname);
pst.setString(2,btype);
pst.setString(3,aname);
pst.setString(4,pname);
pst.setString(5,edition);
pst.setString(6,source);
pst.setString(7,img);
pst.setInt(8,bid);


        int t=pst.executeUpdate();
	if(t>0)
	out.println("Book Updated Successfully");
	con.close();
	}
catch(Exception e){out.println(e);}
%>
        