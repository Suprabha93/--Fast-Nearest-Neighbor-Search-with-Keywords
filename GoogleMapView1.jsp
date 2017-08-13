<%@page import ="java.util.*"%>
<%@ include file="Database/connect.jsp" %>
<%@page import ="java.sql.*"%>
<%@ page language = "java" %>
<%@ page import = "java.text.*"%>
<%@ page import = "java.io.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd ">
<html xmlns=" http://www.w3.org/1999/xhtml" xml:lang="en">
<head>

    <script src=" http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAUvgMDpSwpIVSdk4Lt1gyZxRrPG9ukeNb8tYptMFxTfI6RCHRlBR6oN-gOMyEFzILA_3i60HC7gO7HQ "
        type="text/javascript">
//My Google Maps Key
    </script>

    <script type="text/javascript">

function load() {
	if (GBrowserIsCompatible()) {
	var map = new GMap2(document.getElementById("map"));
map.addControl (new GSmallMapControl());
map.addControl(new GMapTypeControl());
var center = new GLatLng(0, 0);
map.setCenter(center, 11);
map.setMapType(G_SATELLITE_MAP);
geocoder = new GClientGeocoder();

var marker = new GMarker(center, {draggable: true}); 
map.addOverlay(marker);
document.getElementById("lat").value = center.lat();
document.getElementById("lng").value = center.lng ();

geocoder = new GClientGeocoder();

GEvent.addListener(marker, "dragend", function() {
var point =marker.getPoint();
map.panTo(point);
document.getElementById("lat").value = point.lat();
document.getElementById("lng").value = point.lng();
});

GEvent.addListener(map, "moveend", function() {
map.clearOverlays();
var center = map.getCenter();
var marker = new GMarker(center, {draggable: true});
map.addOverlay(marker);
document.getElementById ("lat").value = center.lat();
document.getElementById("lng").value = center.lng();

GEvent.addListener(marker, "dragend", function() {
var point =marker.getPoint();
map.panTo(point);
document.getElementById("lat").value = point.lat();
document.getElementById("lng").value = point.lng();
});
});
}
}

function showAddress(address) {
var map = new GMap2(document.getElementById("map"));
map.addControl(new GSmallMapControl());
map.addControl(new GMapTypeControl());
if (geocoder) {
geocoder.getLatLng (
address,
function(point) {
if (!point) {
alert(address + " city not found !");
}
else {
document.getElementById("lat").value = point.lat();
document.getElementById("lng").value = point.lng();
map.clearOverlays()
map.setCenter(point, 14);
var marker = new GMarker(point, {draggable: true}); 
map.addOverlay(marker);

GEvent.addListener(marker, "dragend", function() {
var pt =marker.getPoint();
map.panTo(pt);
document.getElementById("lat").value = pt.lat();
document.getElementById("lng").value = pt.lng();
});

GEvent.addListener(map, "moveend", function() {
map.clearOverlays();
var center = map.getCenter();
var marker = new GMarker(center, {draggable: true});
map.addOverlay(marker);
document.getElementById ("lat").value = center.lat();
document.getElementById("lng").value = center.lng();

GEvent.addListener(marker, "dragend", function() {
var pt =marker.getPoint();
map.panTo(pt);
document.getElementById("lat").value = pt.lat();
document.getElementById("lng").value = pt.lng();
});
});
}}
);
}}
    </script>

</head>
<body onload="load()" onunload="GUnload()">

    <script language="JavaScript">
<!--
var message="";
function clickIE() {if (document.all) {(message);return false;}}
function clickNS(e) {if
(document.layers||(document.getElementById&&!document.all )) {
if (e.which==2||e.which==3) {(message);return false;}}}
if (document.layers)
{document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}
document.oncontextmenu=new Function("return false")
// -->
    </script>
	
	
    <b>Type city name:</b>
<form action="#" onsubmit="showAddress(this.address.value); return false">


  <%
		  
		  try
		{
			
			String pname="",hname="";
			String Ano=request.getParameter("Ano");
		Statement st=connection.createStatement();

		ResultSet rs=st.executeQuery("select * from categories  where category_id="+Integer.parseInt(Ano)+" " );
ResultSet rs1=st.executeQuery("select * from links where category_id="+Integer.parseInt(Ano)+" ");
		
		if(rs1.next()==true)
		{
		pname=rs1.getString(9);
		
		}
		%>

            <input type="text" size="100" name="address" value="<%=pname%>." />
    <input type="submit" value="Click Here To View Area!!!" />
	
	<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


    <br />
          <br>
       Current coordinates: 
        </form>
        <table bgcolor="#FFFFFF" width="300">

                <tr>
                    <td width="70">
                        <b>Latitude:</b></td>
                    <td>
                        <input type="text" size="34" name="latitude" value="" id="lat" /></td>
                </tr>
                <tr>
                    <td width="70">

                        <b>Longitude:</b></td>
                    <td>
                        <input type="text" size="34" name="longitude" value="" id="lng" /></td>
                </tr>
            </table>
            <br>
            <div align="center" id="map" style="width: 900px; height: 660px">
            </div>
			
			
			
</body>
</html>

