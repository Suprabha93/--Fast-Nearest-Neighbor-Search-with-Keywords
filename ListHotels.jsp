<%@ include file="../Database/connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>

<body bgcolor=#FFFFFF >

<table border=0 width="840" style="border-collapse: collapse" bordercolor="#CCFF00" cellpadding="0" cellspacing="0" align="left">
<tr>
  <td bgcolor="#FF6600" width="91"><strong>Nearest Hotels </strong></td>


  <td bgcolor="#FF6600" width="70" ><b>Distance</b></td>
   <td bgcolor="#FF6600" width="119"><b>Google View</b></td>
   <td bgcolor="#FF6600" width="119"><b>View More</b></td>
  </tr>





<%
	
      	
	String  s2,s4,s5,s6,cid,s77;
	int s7,s3;

      	try 
	{
           
           String query="select * FROM links order by Distance asc"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		cid=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getInt(3);

		s7=rs.getInt(10);

%>

<tr>
	<td bgcolor="#FFFFFF" width="91"><%out.println(s2);%>&nbsp;</td>
 <td bgcolor="#FFFFFF" width="70"><%out.println(s7);%>&nbsp;</td>
 <td bgcolor="#FFFFFF" width="119"><a href="GoogleMapView1.jsp?Ano=<%=s3%>">Google MAP View</a></td>
 <td bgcolor="#FFFFFF" width="119"><a href="ViewMoreHotelDetails.jsp?hid=<%=cid%>">View More</a></td>
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
    <td bgcolor="#FF6600" width="156"><span class="style1"></span></td>
  <td bgcolor="#FF6600" width="152"><span class="style1"></span></tr>
</table>
</form>
<p>&nbsp;</p>
</body>
</html>