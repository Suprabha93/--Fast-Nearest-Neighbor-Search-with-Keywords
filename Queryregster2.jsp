<%@page import ="java.util.*"%>
<%@ include file="Database/connect.jsp" %>

<html>
<body>
<%
     
	      String qtype="Cinema Theatres";    
            String QName=request.getParameter("D1");
            String aname=request.getParameter("T4");
            String pub=request.getParameter("T1");
            
            String price=request.getParameter("T2");
            String edition=request.getParameter("T3");
            String np=request.getParameter("T5");
		String dist=request.getParameter("Distance");
            
               

		
		try
		{
			 
			int s1=0,s2=0,s3=0,s4=0,s5=0;
			

		PreparedStatement pst2=connection.prepareStatement("insert into CinemaTheatre values(?,?,?,?,?,?,?,?)");

		pst2.setString(1,qtype);
           pst2.setString(2,QName);
		pst2.setString(3,aname);

           pst2.setString(4,pub);
           pst2.setString(5,price);
           pst2.setString(6,edition);
           pst2.setString(7,np);  
	     pst2.setInt(8,Integer.parseInt(dist));  

		s2=pst2.executeUpdate();

		out.print("QUERY DETALS ADDED SUCCESSFULLY");

		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>

</body>
</html> 