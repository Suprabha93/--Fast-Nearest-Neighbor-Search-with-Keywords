<%@page import ="java.util.*"%>
<%@ include file="Database/connect.jsp" %>
<%@page import ="java.sql.*"%>
<%@ page language = "java" %>
<%@ page import = "java.text.*"%>
<%@ page import = "java.io.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style2 {
	color: #0000FF;
	font-weight: bold;
}
.style4 {color: #0000CC}
-->
</style>
</head>

<body>
<div align="center"><img src="data.jpg" width="1024" height="280" />
</div>
<div align="center" style="width: 497; height: 310">
  <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>
  <p align="center"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>&nbsp;&nbsp;<span class="style4">ADD PLACE DETAILS </span></em></strong></p>
  <form id="form1" name="form1" method="post" action="AddQueries11.jsp">

    <div align="center">
      <table width="473" border="0" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0" height="24">
        <tr>
          <td width="185" height="23" bgcolor="#33FFCC">
          <strong>Place</strong> <span class="style2"><font color="#111111">Name</font></span></td>
          <td width="288" height="23"><label>
            <select size="1" name="pname">
			
			  <%
		  
		  try
		{
			
			String pname="";
		Statement st=connection.createStatement();

		ResultSet rs=st.executeQuery("select * from categories ");
		
		while(rs.next()==true)
		{
		pname=rs.getString(2);
		
		%><option><%=pname%></option><%
		}
		%>

			
			
              
              
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="1" bgcolor="#33FFCC"></td>
          <td height="1"><input type="submit" name="Submit" value="Submit" />
          <input type="reset" name="Submit2" value="Reset" /></td>
        </tr>
      </table>
    </div>
	<%

		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
		  
		  
		  
		  %>

	
	
  </form>
  <p>&nbsp;  </p>
</div>
</body>

</html>