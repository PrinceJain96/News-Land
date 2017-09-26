<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.dbinfo"%>
<%@page import="java.sql.Connection"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
 
  <div class="panel-group" id="accordion">
    <%
    
    
	 
	 Connection con=dbinfo.con;
	    
	    String query="select nid,ntopic,ntext from ndetaile";
	    
	      PreparedStatement ps12=con.prepareStatement(query);
	    

	      ResultSet x=ps12.executeQuery();
	    String topic="";
	    String txt="";  
	      int id=0;
	      while(x.next())
	      {
	    	  id=x.getInt(1);
	    	  topic=x.getString(2);
	    	  txt=x.getString(3);
	    	  
	    	  
	    	  
	      %>
    
    
    
    
    
      
      
       <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><%=topic %></a>
        </h4>
      </div>
      <div  class="panel-collapse collapse in">
        <div class="panel-body"><%=txt %></div>
        <a href="newsdeldone.jsp?nid=<%= id %>" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-remove"></span> Remove 
        </a>
      </div>
    </div>
       
       
       
       
       
       <%
       
	      }
       %>
       
       
       
       
  </div> 
</div>
<footer>  
  
     <center><button type="button" class="btn btn-success"onclick="location.href='admin.jsp'">Done</button></center>
     
</footer>
</body>
</html>