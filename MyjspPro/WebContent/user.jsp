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
<meta name="viewport" content="width=device-width, initial-scale=1">
 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>News Land</title>
</head>
<body>

<style>
#mySidebar
{
background-color:#999966;}
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

#bt
{

margin-left: 80%;
margin-right:auto;}

</style>

<div class="w3-sidebar w3-bar-block w3-border-right col-md-3" style="display:solid width:25%" id="mySidebar">
  <h3 class="w3-bar-item">Menu</h3>
  <a href="newchlst.jsp" class="w3-bar-item w3-button">Follow channel</a>

<% 
System.out.print("ssssssssss"+session.getAttribute("id").toString());
Connection con=dbinfo.con;
   
   String query="select fto from follow where uid=?";
   
     PreparedStatement ps12=con.prepareStatement(query);
   
ps12.setString(1,session.getAttribute("id").toString());
    ResultSet rs=ps12.executeQuery();
     while(rs.next())
     {
    	 
    	 String x="select uname from login where usid=?";
     ps12=con.prepareStatement(x);
     int id=Integer.parseInt(rs.getString(1));
     ps12.setInt(1,Integer.parseInt(rs.getString(1)));
     ResultSet s=ps12.executeQuery();

String name="";
     while(s.next())
     {
    	  name=s.getString(1);
    	 
    	 
     }
     
        
        %>
  <a href="chsp.jsp?str=<%=id %>" class="w3-bar-item w3-button"><%=name %></a>

        <%
        
        
        
        	  
     }
     
 






%>


</div>

<!-- Page Content -->
<div id ="tp" style="margin-left:25%">
 <h1>
<b>
<strong>

<% String query2="select uname from login where usid=?";
ps12=con.prepareStatement(query2);
ps12.setInt(1, Integer.parseInt(session.getAttribute("id").toString()));
     ResultSet s1=ps12.executeQuery();
     String n="";
while(s1.next())
{
n=s1.getString(1);

} %>
<%=n %>
</strong>
</b>

</h1>
<div align="right">  <a href="#" id="bt" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-log-out"></span> Log out
        </a>
</div></div>

 <div class="container-fluid" style="margin-left:25%">
 
  <div class="panel-group" id="accordion">
  
    
    
    
    
<% 
   
   String query1="select fto from follow where uid=?";
   
      ps12=con.prepareStatement(query);
   
ps12.setString(1,session.getAttribute("id").toString());
  rs=ps12.executeQuery();
     while(rs.next())
     {
    	 
    	 String x="select ntopic,ntext from ndetaile where nch=?";
     ps12=con.prepareStatement(x);
     System.out.print("aaaaaaaaa"+Integer.parseInt(rs.getString(1)));
     ps12.setInt(1,Integer.parseInt(rs.getString(1)));
     ResultSet s=ps12.executeQuery();

String topic="";
String txt="";
     while(s.next())
     {
    	  topic=s.getString(1);
    	  txt=s.getString(2);
     	 
    	  System.out.print("aaaaaaaaa"+topic+txt);
    	    	 
     }
     
        
        %>
     <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><%=topic %></a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body"><%=txt %></div>
      </div>
    </div>
    <%  	  
     }
%>
    
    
</div>
</div>

</body>
</html>