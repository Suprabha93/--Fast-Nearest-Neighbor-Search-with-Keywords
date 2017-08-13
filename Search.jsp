<%@include file="Common.jsp"%>
<%@page import="org.apache.commons.httpclient.HttpStatus"%>
<%@page import="org.apache.commons.httpclient.methods.GetMethod"%>
<%@page import="org.apache.commons.httpclient.HttpClient"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONException"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.net.URL"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Effective Navigation of Query Results Based on Concept Hierarchies</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="tabber.js"></script>
<link rel="stylesheet" href="example.css" TYPE="text/css" MEDIA="screen">
<link rel="stylesheet" href="example-print.css" TYPE="text/css" MEDIA="print">

<script type="text/javascript">

    function init(va)
    {
        if(va!=null)
        document.form1.Search_Term.value=va;
    }

/* Optional: Temporarily hide the "tabber" class so it does not "flash"
   on the page as plain HTML. After tabber runs, the class is changed
   to "tabberlive" and it will appear. */

document.write('<style type="text/css">.tabber{display:none;}<\/style>');
</script>

<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
  <%!
  public static int pagec=1;
  JSONObject resultObject;
  String sitename="google.com",query="harry potter";
    String qs;
    String part_two="";
StringBuffer file=new StringBuffer();
    %>
<body>
     <p align="center" class="style1">Conventional spatial queries, such as range search and nearest neighbor retrieval, involve only conditions on objects&rsquo; geometric properties. </p>
     <p align="center" class="style1">Today, many modern applications call for novel forms of queries that aim to find objects satisfying both a spatial predicate, and a predicate </p>
     <p align="center" class="style1">on their associated texts. For example, instead of considering all the restaurants, a nearest neighbor querywould instead ask for the restaurant </p>
     <p align="center" class="style1">that is the closest among those whose menus contain &ldquo;steak, spaghetti, brandy&rdquo; all at the same time. Currently the best solution to such queries</p>
     <p align="center" class="style1"> is based on the IR2-tree, which, as shown in this paper, has a few deficiencies that seriously impact its efficiency. Motivated by this, we develop </p>
     <p align="center" class="style1">a new access method called the spatial inverted index that extends the conventional inverted index to cope with multidimensional data, and comes </p>
     <p align="center" class="style1">with algorithms that can answer nearest neighbor queries with keywords in real time. As verified by experiments, the proposed techniques outperform </p>
     <p align="center" class="style1">the IR2-tree in query response time significantly, often by a factor of orders of magnitude.</p>
     <p>&nbsp;</p>
     <p>
       <!-- Begin Wrapper -->
<div id="wrapper" align="center">
       
       
       <!-- Begin Header -->
     </p>
     <div align="left" class="style1" id="leftcolumn"> 
  <h2 align="left" >&nbsp;</h2>
  </div>
       
		       <div align="left" class="style1">
		         <!-- End Left Column -->
		         
		         <!-- Begin Right Column -->
		         <div id="rightcolumn">
</div>
		       <form name="ss">
			     <div align="left" class="style1">
						     <fieldset>
                             <p>&nbsp;</p>
                             <p>&nbsp;</p>
                             <p>&nbsp;</p>
                             <p>&nbsp;</p>
						     </fieldset>
			     </div>
			     <fieldset>
			     <p align="left" class="style1">&nbsp;</p>
			     <p align="left" class="style1">&nbsp;</p>
			     <p align="left" class="style1">The best solution to  queries is based on the R-tree(<font color="#FF0000"><strong> R Tree View </strong></font>)</p>
			     <div align="left"><br>
	                         
	                         <br>
                 </div>
                    <p  align="left"> <font color="#3366FF">
     <%!
    int noofoption=0;
    String[] cats=new String[100];
    
    %>
                     <%
java.sql.Connection conn = null;
java.sql.Statement stat = null;
java.sql.Statement stat2 = null;
java.sql.ResultSet rs=null;
java.sql.ResultSet rs1=null;
java.sql.ResultSet rs2=null;
String sErr = loadDriver();
conn = cn();
stat = conn.createStatement();
stat2 = conn.createStatement();
if ( ! sErr.equals("") ) {
 try {
   out.println(sErr);
 }
 catch (Exception e) {}
}

try
{
rs=stat.executeQuery("Select count(category_id) as counts from categories");
if(rs.next())
    {
noofoption=Integer.parseInt(rs.getString("counts"));

}
//out.print("size "+noofoption);
}
catch(Exception e)
{
    out.print(e.getMessage());
}

///
try
{

rs1=stat.executeQuery("Select * from categories");
//int i=0;
while(rs1.next())
{
 //   cats[i]=new String();
 //   cats[i]="hi";
//out.print(rs1.getString(2));
//cats[i]=
//for(int i=0;i<noofoption;i++)
//{
    String id=rs1.getString(1);
    String sap=rs1.getString(2);
    //out.print(id);
    out.print("<input type=\"checkbox\" name=\"id\" value="+sap+">"+sap+"<BR>");
   rs2=stat2.executeQuery("Select url,name from links where category_id="+id+" and approved=1");

   while(rs2.next())
        {
       String ssa=rs2.getString(1);
       String sa=rs2.getString(2);
        
         out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" name=\"id\" value="+ssa+" >"+sa+"<BR>");
        }
   out.print("<br>");
//}
//i++;

}
}
catch(Exception e)
{
    out.print(" aa"+e.getMessage());
}

        %>
                   </font></p>
                   <p align="left">&nbsp;</p>
				 <div align="left"><br>
				 </div>
				             <p align="left">&nbsp;</p>
							 <div align="left"><br>
				 </div>
			     </fieldset>
</form>
               									     
		       <!-- End Right Column -->
			   
 
 <!-- End Faux Columns --> 

		 <!-- Begin Footer -->
<!-- End Footer -->
		 
<!-- End Wrapper -->
</form>     
</body>
</html>
