<%@page import ="java.util.*"%>
<%@ include file="Database/connect.jsp" %>
<%@page import ="java.sql.*"%>
<%@ page language = "java" %>
<%@ page import = "java.text.*"%>
<%@ page import = "java.io.*"%>


<html>
<body>
<%
     
	     String app="1";    
            String PName=request.getParameter("pname");
            String HName=request.getParameter("hname");
            String spe=request.getParameter("spe");
            
            String url=request.getParameter("url");
            String hdesc=request.getParameter("hdesc");
            String address=request.getParameter("address");
           String dist=request.getParameter("Distance");
            
               int dist1=Integer.parseInt(dist);
			   int app1=Integer.parseInt(app);			   
			   int pn=Integer.parseInt(PName);

		
		try
		{
	
	java.util.Date td = new java.util.Date();
	SimpleDateFormat sdf = new SimpleDateFormat ( "dd/MM/yyyy" );
	String tempdate = sdf.format ( td ).toString();


			int s1=0,s2=0,s3=0,s4=0,s5=0;
			
		Statement st=connection.createStatement();

		st.executeQuery("insert into links (name,category_id,approved,url,description,add_date,Specilization,Address,Distance)values('"+HName+"',"+pn+","+app1+",'"+url+"','"+hdesc+"','"+tempdate+"','"+spe+"','"+address+"',"+dist1+")");

		

		out.print("QUERY DETALS ADDED SUCCESSFULLY");

		}
	  	

	catch(SQLException e)
       	 {
	   }  
out.println("QUERY DETALS ADDED SUCCESSFULLY");

%>

</body>
</html> 