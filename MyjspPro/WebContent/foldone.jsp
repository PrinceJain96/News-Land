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

	 <%System.out.print(session.getAttribute("id"));
	
	 System.out.print(request.getParameter("str"));
	 
	 
	 
	 Connection con=dbinfo.con;
	    
	    String query="insert into follow values(?,?)";
	    
	      PreparedStatement ps12=con.prepareStatement(query);
	    
	 ps12.setString(2,request.getParameter("str"));
	 ps12.setString(1,session.getAttribute("id").toString());

	      int rs=ps12.executeUpdate();
	       if(rs==1)
	    	   
	       {
	    	   
	   	    String query1="UPDATE login SET follow= ?+1 WHERE usid=?";
	   	   String as="select follow from login where usid=?";
	  	 ps12=con.prepareStatement(as);
	   	
	     ps12.setString(1,request.getParameter("str"));
	   	 ResultSet s=ps12.executeQuery();
	  	int fol=0;
	   	 while(s.next())
	  	 {
	  		 fol= s.getInt(1);
	  		 
	  	 }
	  	 
	  	 
	  	 
	  	 
	  	 
	  	 ps12=con.prepareStatement(query1);
		 
	   	    ps12.setString(2,request.getParameter("str"));
	   	 ps12.setInt(1, fol);

	
	         rs=ps12.executeUpdate();
	    	    	   
	    	   
	    	   
	    	   
	       }
	    	   
	      
	      response.sendRedirect("newchlst.jsp");
	    	
	      
	 %></body>
</html>