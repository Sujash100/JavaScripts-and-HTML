<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<%
	String uname=(String)session.getAttribute("cname");
	out.println("<h4>Welcome "+uname);
%>
<form action=uschoosebook.jsp method=post>
<center>
Select Book Type<select name=type>
<option></option>
<%
    try{
        PreparedStatement pst=con.prepareStatement("select distinct btype from booklist");
	ResultSet rs=pst.executeQuery();
        while(rs.next())
	{
	  String type=rs.getString(1);
%>
<option value="<%=type%>"><%=type%></option>
<%
	}
	}
	catch(Exception e){out.println(e);}
%>
</select>
<br><br>
Select Author's Name<select name=aname>
<option></option>
<%
    try{
        PreparedStatement pst1=con.prepareStatement("select distinct aname from booklist");
	ResultSet rs1=pst1.executeQuery();
        while(rs1.next())
	{
	  String aname=rs1.getString(1);
%>
<option value="<%=aname%>"><%=aname%></option>
<%
	}
	con.close();
	}
	catch(Exception e){out.println(e);}
%>
</select>
<br><br>
<input type=submit value=Submit>
</form>