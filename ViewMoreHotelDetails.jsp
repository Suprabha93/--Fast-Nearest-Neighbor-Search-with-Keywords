<%@ page import="java.sql.*"%>
<%@ include file="../Database/connect.jsp" %>

<html>
</html>

<html>
<body>
<div align="center" style="width: 836; height: 92">
  <center>
    <h1><u><i><font color="#0000FF" size="5"><blink>SELECTED HOTEL DETAILS</blink></font></i></u></h1>
    
    <p>
        <%
	String hid="";
   String country="";
    
	hid=request.getParameter("hid");

	
	
	
     	
	String  s2="",s3="",s4="",s5="",s8,s9,empid;
	int s6=0;
	int s7=0;
	int s1=0;

           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con = DriverManager.getConnection("jdbc:odbc:NearestSearch");
           Statement st=con.createStatement();
           
           String query="SELECT * FROM links where link_id="+hid+" "; 
           ResultSet rs=st.executeQuery(query);
if (rs.next()==true)
	   {
s1=rs.getInt(1);
s2=rs.getString(2);
s3=rs.getString(5);
s4=rs.getString(6);
s5=rs.getString(9);
s6=rs.getInt(10);

  	   }
  %>
  
        <br>
    <a href="ListHotels.html"></a>  </p>
      <p>&nbsp;</p>
      <table width="770" border="0">
        <tr>
          <td width="109" height="47"><em><strong><font color="#0000FF">Hotel ID </font></strong></em></td>
          <td width="168"><%=s1%></td>
          <td width="216"><em><strong><font color="#0000FF">Hotel Name </font></strong></em></td>
          <td width="220"><%=s2%></td>
        </tr>
        <tr>
          <td height="48">------------------</td>
          <td>----------------------------</td>
          <td>-------------------</td>
          <td>----------------------------------------</td>
        </tr>
        <tr>
          <td height="50"><em><strong><font color="#0000FF">URL</font></strong></em></td>
          <td><%=s3%></td>
          <td><em><strong><font color="#0000FF">Description</font></strong></em></td>
          <td> <%=s4%></td>
        </tr>
        <tr>
          <td height="51">-----------------</td>
          <td>----------------------------</td>
          <td>-------------------</td>
          <td>----------------------------------------</td>
        </tr>
        <tr>
          <td height="59"><em><strong><font color="#0000FF">Address </font></strong></em></td>
          <td><%=s5%></td>
          <td><em><strong><font color="#0000FF">Distance</font></strong></em></td>
          <td><%=s6%></td>
        </tr>
    </table>
      <p>&nbsp;</p>
      <p><a href="ListHotels.jsp">BACK</a></p>
      <p>&nbsp;    </p>
  </center>
</div>
</body>
</html>
