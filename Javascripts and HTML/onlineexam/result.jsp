<%@include file="connect.jsp"%>
<%
	try{
	String croll=(String)session.getAttribute("croll");
	String name=(String)session.getAttribute("name");
	int tq=Integer.parseInt((String)session.getAttribute("total"));
	double m=0;
	for(int i=1;i<tq;i++)
	{
	   String uans=request.getParameter("o"+i);
	   int qid=Integer.parseInt(request.getParameter("q"+i));
	  String cans="";
	   
	    PreparedStatement pst=con.prepareStatement("select cans from exam_question where qid=?");
	   pst.setInt(1,qid);
	    ResultSet rs=pst.executeQuery();
	    if(rs.next())
	     cans=rs.getString(1);
	    if(uans!=null)
	     {
		if(uans.equals(cans))
		m+=1;
		else
		m-=.25;
	      
	      }
        }
	out.println("<h3>Name: "+name);
	out.println("<h3>Roll: "+croll);
	out.println("<h3>Total marks :"+(tq-1));
	out.println("<font color=red><h1>Obtained marks : "+m);
	out.println("<h3>Percentage : "+(m/(tq-1)*100)+"%");
	con.close();
	}
	catch(Exception e){}
%>
		