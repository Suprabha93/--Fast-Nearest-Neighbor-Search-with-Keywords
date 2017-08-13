<%@ include file="../Database/connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {
	color: #FF00FF;
	font-weight: bold;
	font-size: 18px;
}
.style2 {color: #FF0000}
-->
</style>

<body bgcolor=#FFFFFF >

<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center" class="style1">	<span class="style2">Searched Hotels Under the Keyword</span> =&gt; <%=request.getParameter("keyword")%></p>
<table border=0 width="840" style="border-collapse: collapse" bordercolor="#CC3300" cellpadding="0" cellspacing="0" align="left">
<tr>
  <td bgcolor="#FF6600" width="91"><strong>Area Name </strong></td>

  <td bgcolor="#FF6600" width="104"><b>Hotel Name </b></td>


  <td bgcolor="#FF6600" width="70"><b>Distance</b></td>
   <td bgcolor="#FF6600" width="119"><b>Google View</b></td>
  </tr>





<%
	
      	String sp=request.getParameter("keyword");
	String  s2, s3,s4,s5,s6,cid,s77;
	int s7;

      	try 
	{
           
           String query="select * FROM links where Specilization='"+sp+"' order by Distance asc"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		cid=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s7=rs.getInt(10);

%>

<tr>
	<td bgcolor="#FFFFFF" width="91"><%out.println(s2);%>&nbsp;</td>
    <td bgcolor="#FFFFFF" width="104"><%out.println(s3);%>&nbsp;</td>
 <td bgcolor="#FFFFFF" width="70"><%out.println(s7);%>&nbsp;</td>
 <td bgcolor="#FFFFFF" width="119"><a href="GoogleMapView1.jsp?Ano=<%=s3%>">Google MAP View</a></td>
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
  <td bgcolor="#FF6600" width="152">    </tr>
</table>
</form>
<p>&nbsp;</p>
</body>
</html>