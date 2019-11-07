<%@include file="connect.jsp" %>
<%@include file="umenu.html"%>
<%
String cid=(String)session.getAttribute("customerid");
out.println(cid);
%>
<head>
<script lannguage="javascript">
function func1()
{
if(document.f1.number.value=="")
{
alert("This field can not be empty");
document.f1.number.focus();
return false
}
else

}
</script></head>
<form action=bookhotelnow.jsp method=post name=f1 onsubmit="return func1()">


<%

int a=0;
String avl="";
String date=request.getParameter("date");
String date1=request.getParameter("date1");
String roomtype=request.getParameter("roomtype");
int hid=Integer.parseInt(request.getParameter("hid"));
String cidate="";
String codate="";
String r[]=new String[100];
int i=1;
String rid="";
int flag=0;
int flag1=0;
int slno=0;


  try{
	
      
      PreparedStatement pst=con.prepareStatement("select * from checklist where rtype='"+roomtype+"' and hid='"+hid+"'");
	
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		cidate=(rs.getString(5));
		codate=(rs.getString(6));


		if((cidate==null) && (codate==null))
		{
		rid=(rs.getString(3));
		a=a+1;
flag=1;
flag1=1;


		}		
		else if((cidate!=null) && (codate!=null))
		{
			if((date.compareTo(codate)>0))
			{
			rid=(rs.getString(3));
			a=a+1;
flag=0;
flag1=1;
			}
			else if(((date.compareTo(cidate)<0)&&(date1.compareTo(cidate)<0)))
			{
			rid=(rs.getString(3));
			a=a+1;
flag=0;
flag1=1;

			}
		}
if(flag1==1)
{
PreparedStatement pst1=con.prepareStatement("insert into temp values(?,?,?,?)");
slno++;
        pst1.setInt(1,slno);
	pst1.setString(2,rid);
	pst1.setInt(3,flag);
	pst1.setString(4,cid);
	int t=pst1.executeUpdate();
	if(t>0)
	out.println(".");
	else
	out.println(".. ");

}
		r[i]=rid;
		i++;


		
	}

out.println("...");
if(a==0)
{
out.println("Rooms Not Available");
}
else
{
%>
<h3>
<%
out.println("Rooms Available");
for(i=1;i<=10;i++)
{
out.println(".");
}
%>
 

<h3>Enter Number of Rooms you Want to Book:<input type=text name=number  size=3><br><br>
<pre>
<input type=hidden name=date value=<%=date%>>
<input type=hidden name=date1 value=<%=date1%>>
<input type=hidden name=roomtype value=<%=roomtype%>>
<input type=hidden name=hid value=<%=hid%>>
<input type=submit value=Submit><br><br>
</pre>
<%	
}
}	
catch(Exception e){out.println(e);}

%>

</form>