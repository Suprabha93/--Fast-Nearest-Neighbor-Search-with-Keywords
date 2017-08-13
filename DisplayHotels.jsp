<%@ page import="java.sql.*"%>

<html>
</html>

<html>
<body>
<div align="center" style="width: 836; height: 92">
  <center>
    <h1><u><i><font color="#0000FF" size="5"><blink>SELECTED AREA's Hotels Details</blink></font></i></u></h1>
    
  
        <%
	String aname="";
   String keyword="";
    
	aname=request.getParameter("Aname");
	keyword=request.getParameter("kword");
	
	
     	
	String  s2="",s3="",s4="",s5="",s8,s9,empid;
	String s6="";
	String s1="";
	String s7="";


           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con = DriverManager.getConnection("jdbc:odbc:NearestSearch");
           Statement st=con.createStatement();
           
           String query="SELECT * FROM Hotels where PName='"+aname+"' and Specialize='"+keyword+"'"; 
           ResultSet rs=st.executeQuery(query);
if (rs.next()==true)
	   {
s1=rs.getString(1);
s2=rs.getString(2);
s3=rs.getString(3);
s4=rs.getString(4);
s5=rs.getString(5);
s6=rs.getString(6);
s7=rs.getInt(7);
  	   }
  %>
  
       
</body>
</html>
