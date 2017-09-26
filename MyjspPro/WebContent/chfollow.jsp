<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.dbinfo"%>
<%@page import="java.sql.Connection"%>
s<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

<style>
h3
{
text-align:right;
margin-right:10%;
 }
h1
{
text-align:left
;
margin-left:5%;
margin-top:20px;
 }
#tp
{
background-color:#6600FF;}
button {
  display: inline-block;
 
  font-size: 42px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  width:50%;
  height:100%;
 border: none;
}

</style>

<div class="w3-sidebar w3-bar-block w3-border-right col-md-3" style="display:none" id="mySidebar">
  <button onClick="w3_close()" class="w3-bar-item w3-large">Close &times;</button>
  <a href="tpic.jsp ?ty=1&cid=<%request.getParameter("ss"); %>" class="w3-bar-item w3-button">Inter National</a>
  <a href="#" class="w3-bar-item w3-button">National</a>
  <a href="#" class="w3-bar-item w3-button">Circket</a>
  <a href="#" class="w3-bar-item w3-button">Politics</a>
  <a href="#" class="w3-bar-item w3-button">Bollywood</a>
 

</div>

<!-- Page Content -->
<div id ="tp" >
 <h1>
<b>
<strong>apb news
</strong>
<h3>
Follower:
</h3></b>

</h1>
 <div class="row">
  <div class="col-md-6" align="left">
  
  <button class="w3-button w3-teal w3-xlarge" onClick="w3_open()">MENU</button>
   </div>
  
  <div class="col-md-6" align="right">
  <%
   System.out.print(request.getParameter("str"));
  String x="location.href='foldone.jsp?str="+request.getParameter("str")+"'";  
 %>
<button type="button" class="btn btn-success"onclick="<%=x %>">Follow Us</button>


   </div>

   </div>

 <div class="container-fluid">
 
  <div class="panel-group" id="accordion">
     
<%

Connection con=dbinfo.con;

String query="select ntopic,ntext from ndetaile where nch=?";

  PreparedStatement ps12=con.prepareStatement(query);

ps12.setInt(1,Integer.parseInt(request.getParameter("str")));
 ResultSet rs=ps12.executeQuery();


String topic="";
String txt="";
     while(rs.next())
     {
    	  topic=rs.getString(1);
    	  txt=rs.getString(2);
   
%>
 <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><%=topic %></a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body"><%=txt%></div>
      </div>
    </div>
 <%    	  
     }
     

%>
</div>
</div>
<script>
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
}
</script>
</body>
</html>