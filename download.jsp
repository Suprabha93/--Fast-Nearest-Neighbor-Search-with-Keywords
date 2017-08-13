<%@ page import="java.sql.*"%>

<html>
<style type="text/css">
<!--
.style1 {color: #FF00FF}
-->
</style>
<body>
<div align="center" style="width: 735; height: 91">
  <center>
  <h1><u><i><font color="#0000FF" size="5">FILE DETAILS</font></i></u></h1>
<table style="border-collapse: collapse" bordercolor="#111111" cellspacing="1" width="692" border="0">
<tr>

 <td width="52" bgcolor="#3333FF" align="left"><font color="#FFFFFF"><i><b>File Id</b></i></font></td>
 <td width="358" bgcolor="#3333FF" align="left"><font color="#FFFFFF"><i><b>File Name</b></i></font></td>
</tr>
<%
	
    
     	
	String  s1,s2;

           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con = DriverManager.getConnection("jdbc:odbc:mobile");
           Statement st=con.createStatement();
           
           String query="SELECT *  FROM UploadedFile"; 
           ResultSet rs=st.executeQuery(query);
while ( rs.next()==true)
	   {
s1=rs.getString(1);
s2=rs.getString(2);

%>
<td width="52" align="center">  <%=s1%></td> 
<td width="367" align="center">  <%=s2%></td>
<td width="1" align="center" bgcolor="#0000FF">     
<a href="downloadfile.jsp?Fid=<%=s1%>"><font color="#FFFFFF"><b>Download</b></font></a></td> 
</tr>

<%	   }

          
          
%>
</table>
  </center>
</div>
</body>
</html>