<%@ include file="Database/connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
    
        String username=request.getParameter("username");      
        String Password=request.getParameter("password");
        

try
{
	   String sql="SELECT * FROM studreg where sname='"+username+"' and pword='"+Password+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    

					Statement stmt1=connection.createStatement();
				    String strQuery1 = "select * from Image where username='users' ";
				    ResultSet rs1 = stmt1.executeQuery(strQuery1);
				    while(rs1.next()){
				    	
				    	int i=rs1.getInt(1);
						int j=rs1.getInt(2);
						
						
						j=j+1;
				    	 Statement st31 = connection.createStatement();
						   String query31 ="update Image set count='"+j+"' where username='user'";
						   st31.executeUpdate (query31); 
						      }
		
	response.sendRedirect("UserMenu.htm");
				   
						   
           }
	    else
	    {
	    response.sendRedirect("wronglogin.html");
          }
}

catch(Exception e)
{out.print(e);}
%>

