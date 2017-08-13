<%@page import ="java.util.*"%>
<%@ include file="Database/connect.jsp" %>


<html>
<body>
<%
     
   
            String aname=request.getParameter("aname");
            
		try
		{
				
				int pos=1;
		Statement st=connection.createStatement();

		st.executeUpdate("insert into categories (category_desc,parent_category_id)values('"+aname+"',"+pos+")");

		out.print("AREA DETALS ADDED SUCCESSFULLY");

		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>

</body>
</html> 
