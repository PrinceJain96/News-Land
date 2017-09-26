<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.dbinfo"%>
<%@page import="java.sql.Connection"%>


<html lang="en">
<head>
  <title>Web News</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
 <%@include file="imgslider.html" %> 
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">    
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
    
	   <li><a href="cont.html">CONTACT</a></li>
	    <li><a href="#">ABOUT</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>



<div class="container-fluid">
 
  <div class="panel-group" id="accordion">
    <%
    
    
	 
	 Connection con=dbinfo.con;
	    
	    String query="select ntopic,ntext from ndetaile";
	    
	      PreparedStatement ps12=con.prepareStatement(query);
	    

	      ResultSet x=ps12.executeQuery();
	    String topic="";
	    String txt="";  
	      
	      while(x.next())
	      {
	    	  
	    	  topic=x.getString(1);
	    	  txt=x.getString(2);
	    	  
	    	  
	    	  
	      %>
    
    
    
    
    
      
      
       <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><%=topic %></a>
        </h4>
      </div>
      <div  class="panel-collapse collapse in">
        <div class="panel-body"><%=txt %></div>
      </div>
    </div>
       
       
       
       
       
       <%
       
	      }
       %>
       
       
       
       
  </div> 
</div>

<footer>
  <p>Posted by: Hege Refsnes</p>
  <p>Contact information: <a href="mailto:someone@example.com">someone@example.com</a>.</p>
</footer>

</body>
</html>
