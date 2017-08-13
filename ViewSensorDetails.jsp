<%@ page import="java.sql.*"%>

<html>
</html>

<html>
<body> 
<div align="center" style="width: 836; height: 92">
  <center>
  <h1><u><i><font color="#FF0000" size="5">Health Care Centre - PATIENT SENSOR DETAILS</font></i></u></h1>
  <table style="border-collapse: collapse" bordercolor="#111111" cellspacing="1" width="821" border="0">
<tr>

 <td width="71" bgcolor="#FF0000" align="left"><font color="#FFFFFF"><b><i>P</i></b><i><b>No</b></i></font></td>
 <td width="100" bgcolor="#FF0000" align="left"><font color="#FFFFFF"><b><i>
 PatientName</i></b></font></td>
  <td width="73" bgcolor="#FF0000" align="center"><font color="#FFFFFF"><strong><em>BP</em></strong></font></td>
  
  <td width="89" bgcolor="#FF0000" align="center"><font color="#FFFFFF"><b><i>Sugar</i></b></font></td>
  <td width="69" bgcolor="#FF0000" align="center"><b><i><font color="#FFFFFF">HeartBeat</font></i></b></td>
  <td width="146" bgcolor="#FF0000" align="center"><font color="#FFFFFF"><i><b> Body Temperature</b></i></font></td>
  <td width="39" bgcolor="#FF0000" align="center"><font color="#FFFFFF"><i><b>Date</b></i></font></td>
  <td width="108" bgcolor="#FF0000" align="center"><font color="#FFFFFF"><i><b>Status</b></i></font></td>
</tr>
<%
	
    
     	
	String  s1,s2,s3,s4,s5,s6,s7,s8,s9,empid;

           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con = DriverManager.getConnection("jdbc:odbc:mobile");
           Statement st=con.createStatement();
           
           String query="SELECT *  FROM SensorDetails"; 
           ResultSet rs=st.executeQuery(query);
while ( rs.next()==true)
	   {
s1=rs.getString(1);
s2=rs.getString(2);
s3=rs.getString(3);
s4=rs.getString(4);
s5=rs.getString(5);
s6=rs.getString(6);
s7=rs.getString(7);
s8=rs.getString(8);



%>
<td width="71" align="center">  <%=s1%></td> 
<td width="100" align="center">  <%=s2%></td>
<td width="73" align="center">  <%=s3%></td> 
<td width="89" align="center">       <%=s4%></td> 
<td width="69" align="center">          <%=s5%></td> 
<td width="146" align="center">       <%=s6%></td> 
<td width="39" align="center">      <%=s7%></td> 
<td width="108" align="center">      <%=s8%></td> 

<td width="98" align="center" bgcolor="#FF0000">     
<a href="Solution1.jsp?Qid=<%=s1%>"><font color="#FFFFFF"><b>Solution</b></font></a></td> 
</tr>

<%	   }

          
          
%>
</table>
  </center>
</div>
</body>
</html>
