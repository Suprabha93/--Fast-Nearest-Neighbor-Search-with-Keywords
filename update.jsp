<%@ include file="Database/connect.jsp" %>

<html>
<body>
<p>&nbsp;</p>
<p>
  <%
   String name=request.getParameter("name");
   String opass=request.getParameter("opass");
   String npass=request.getParameter("npass");



Statement st;
ResultSet rs;


	try
	{
		 st=connection.createStatement();
        
				st.executeUpdate("update Admin set password='"+ npass + "'  where username='"+ name +"' ");
		 


	}
	catch(Exception e)
	{
		System.out.print(e);
	}
	    

out.println("Password Changed Successfully");

%>



</body>
</html>

