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

	 <%System.out.print(request.getParameter("username"));
	
	 System.out.print(request.getParameter("password"));
	 
	 
	 
	 Connection con=dbinfo.con;
	    
	    String query="select * from login where usid=? and pass=?";
	    
	      PreparedStatement ps12=con.prepareStatement(query);
	    
	 ps12.setString(1,request.getParameter("username"));
	 ps12.setString(2,request.getParameter("password"));

	      ResultSet rs=ps12.executeQuery();
	      int flag=0 ;
	      int usertype=0;
	      String urll=null;
	      while(rs.next())
	      {
	         flag=1;
	         usertype=rs.getInt(5);
	         break;	  
	      }
	      
	      
	      if(flag==1 &&  (usertype==1))
	      {session.setAttribute("utype", 1);
	      urll="admin.jsp";
	      }
	      if(flag==1 &&  (usertype==2))
	      {session.setAttribute("utype", 2);
	      session.setAttribute("id", request.getParameter("username"));
urll="chacom.jsp";
	      }
	      if(flag==1 &&  (usertype==3))
	      {
	    	  session.setAttribute("utype", 3);
		      session.setAttribute("id", request.getParameter("username"));

		      urll="user.jsp";
	      }
	      else
	      {
	    	  
	      }
	      
	      
	      response.sendRedirect(urll);
	    	
	      
	 %></body>
</html>