<%@ include file="Database/connect.jsp" %>

<html>
<body>
<p>&nbsp;</p>
<p>
  <%
   String qid=request.getParameter("T1");
   String soln=request.getParameter("D1");
   String ans=request.getParameter("S1");



Statement st;
ResultSet rs;

int qid1=Integer.parseInt(qid);
	try
	{
		 st=connection.createStatement();
         rs=st.executeQuery("select * from SensorDetails where Qid="+ qid1 +" ");
		if(rs.next()==true)
		 {
				st.executeUpdate("update SensorDetails set status='"+ soln + "',solution='"+ ans + "' where Qid="+ qid1 +" ");
		 }
else 
{

out.print("Can Not Give Solution");
}

	}
	catch(Exception e)
	{
		System.out.print(e);
	}
	     response.sendRedirect("ViewSensorDetails.jsp");
%>



</body>
</html>

