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
</head>
<body>
   <%
    
    
	 
	 Connection con=dbinfo.con;
	    
	    String query="DELETE  from ndetaile WHERE nid = ?";
	    
	      PreparedStatement ps12=con.prepareStatement(query);
	    ps12.setInt(1, Integer.parseInt(request.getParameter("nid")));

	    int x=ps12.executeUpdate();
	 

       if(x==1)
       {
    	   response.sendRedirect("newsdel.jsp");
       }
       %>
       
       

</body>
</html>