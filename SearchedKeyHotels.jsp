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
<p align="center" class="style1">	<span class="style2">Searched Hotels Under the Place</span> =&gt; <%=request.getParameter("Aname")%></p>
<p align="center" class="style1">	<span class="style2">Searched Hotels Under the Keyword</span> =&gt; <%=request.getParameter("kword")%></p>
<table border=0 width="840" style="border-collapse: collapse" bordercolor="#CC3300" cellpadding="0" cellspacing="0" align="left">
<tr>
  <td bgcolor="#FF6600" width="91"><strong>Area Name </strong></td>

  <td bgcolor="#FF6600" width="104"><b>Hotel Name </b></td>


  <td bgcolor="#FF6600" width="70"><b>Distance</b></td>
   <td bgcolor="#FF6600" width="119"><b>Google View</b></td>
  </tr>

<%
	String aname=request.getParameter("Aname");
		
      	String kword=request.getParameter("kword");
		
		
	String   s3,s4,s5,s6,cid,s77;
	int s7,s2,s22;
	 ResultSet rs1;

      	try 
	{
           
//           String query="select * FROM links where name='"+aname+"' and Specialize='"+kword+"' order by distance asc"; 
           String query="select * FROM categories where category_desc='"+aname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   if( rs.next()==true )
	   {
		
		s2=rs.getInt(1);

		 String query1="select * FROM links where category_id="+s2+" and Specilization='"+kword+"'  "; 
           Statement st1=connection.createStatement();
           rs1=st1.executeQuery(query1);
		   
		   while(rs1.next()==true)
		   {
		  
		    s3=rs1.getString(2);
		 //   s22=rs.getInt(3);
		   s7=rs1.getInt(10);
		   
		   %>
		   <tr>
	<td bgcolor="#FFFFFF" width="91"><%out.println(aname);%>&nbsp;</td>
    <td bgcolor="#FFFFFF" width="104"><%out.println(s3);%>&nbsp;</td>
 <td bgcolor="#FFFFFF" width="70"><%out.println(s7);%>&nbsp;</td>
 <td bgcolor="#FFFFFF" width="119"><a href="GoogleMapView1.jsp?Ano=<%=s2%>">Google MAP View</a></td>
</tr>
		   <%}
		   
		
	
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