<%@ include file="../Database/connect.jsp" %>

<html>

<body bgcolor=#FFFFFF >
<table border=0 width="840" style="border-collapse: collapse" bordercolor="#CC3300" cellpadding="0" cellspacing="0" align="left">
  <tr>
    <td bgcolor="#FF6600" width="91"><strong>Area Name </strong></td>
    <td bgcolor="#FF6600" width="104"><b>Theatre Name </b></td>
    
    <td bgcolor="#FF6600" width="70"><b>Distance</b></td>
    <td bgcolor="#FF6600" width="119"><b>Google View</b></td>
  </tr>
  <%
	
      	
	String  s2, s3,s4,s5,s6,cid,s77;
	int s7;

      	try 
	{
           
           String query="select * FROM CinemaTheatre order by distance asc"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		cid=rs.getString(1);
		s2=rs.getString(2);
            s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s77=rs.getString(7);
		s7=rs.getInt(8);

%>
  <tr>
    <td bgcolor="#FFFFFF" width="91"><%out.println(s2);%>
      &nbsp;</td>
    <td bgcolor="#FFFFFF" width="104"><%out.println(s3);%>
      &nbsp;</td>
   
       </td>
    <td bgcolor="#FFFFFF" width="70"><%out.println(s7);%>
      &nbsp;</td>
    <td bgcolor="#FFFFFF" width="119"><a href="GoogleMapView.jsp?Aname=<%=s2%>">Google MAP View</a></td>
  </tr>
  <%

	   }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
  <tr>
    <td bgcolor="#FF6600" width="91">&nbsp;</td>
    <td bgcolor="#FF6600" width="104">&nbsp;</td>
    <td bgcolor="#FF6600" width="156">&nbsp;</td>
    <td bgcolor="#FF6600" width="152">
    <td bgcolor="#FFFFFF" width="76">&nbsp;</td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
</body>
</html>