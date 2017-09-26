<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.dbinfo"%>
<%@page import="java.sql.Connection"%>

<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover{background-color:#f5f5f5}
</style>
</head>

<div class="container">
 <div class="table-responsive">          
  <table class="table">
    <thead>
                      <tr bgcolor="#FFFF99">
              <td width="30%"><div align="left">CHANNEL NAME</div></td>
              <td width="30%"><div align="left">FOLLOWER</div></td>
              <td colspan="30"><div align="left">FOLLOW</div></td>
            </tr><thead>
    
 <%
   
    Connection con=dbinfo.con;
    String query="select * from login where type='2'";
    PreparedStatement ps=con.prepareStatement(query);
    ResultSet res=ps.executeQuery();
    while(res.next())
    {
       String uname=res.getString(1);
       int fol=res.getInt(4);
       int id=res.getInt(1); %> 
 
         <tr bgcolor="#FFFF99">
              <td ><%=uname %></td>
           
              <td ><%=fol %></td>
          
              <td ><a href=chfollow.jsp?str=<%=id%>>Follow</a></td>
            </tr>
     
          
       <%   
       }
        %>

 </div>
 </div>
     </table>
     
     <center><button type="button" class="btn btn-success"onclick="location.href='user.jsp'">Done</button></center>
     
     
     
</body>
</html>