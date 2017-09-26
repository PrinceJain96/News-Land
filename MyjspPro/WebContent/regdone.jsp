<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.dbinfo"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>
  

  
  
  <body>
    <%
      Connection con1=dbinfo.con;
int id=0;    
    String query="insert into login(uname,pass,follow,type) values(?,?,?,?)";
    System.out.print(request.getParameter("uname") );
      PreparedStatement ps1=con1.prepareStatement(query);
      ps1.setString(1, request.getParameter("uname") );
      ps1.setString (2, request.getParameter("psw"));
      ps1.setInt (3,0);
      if(Integer.parseInt(session.getAttribute("utype").toString())==1)
      {     ps1.setInt(4, 2);
      }
      
      else
    	  {ps1.setInt(4, 3);
    	  }
    	  int flag = ps1.executeUpdate ();
    
   %>
  
  <div align="center"><br>
  </div>
  <div align="center">
    <table width="900" border="1">
      <tr>
        <td colspan="3" valign="top"><jsp:include page="header.html"/>&nbsp;</td>
      </tr>
      <tr>
       
        
        <% 
          if(flag==1)
          {System.out.print("ssssssssss" );
          String query1="select max(usid) from login";
            ps1=con1.prepareStatement(query1);
             ResultSet rs=ps1.executeQuery();
            while(rs.next())
            {
id=rs.getInt(1);            	
System.out.print(id );
        	
    break;        	
            }
            
            
            %>
        <td width="424"><div align="center">Registration done!!</div>
        <div>
          <td width="424"><div align="center"> your id is </div>
          
          <%=id %>
          
     <%      
        if(Integer.parseInt(session.getAttribute("utype").toString())==1)
      {   
        	%>
        	<div align="center"><a href="admin.jsp">DONE</a></div></td>
        	
        <%
         }
         else
         {
         %>  	
        	
        	<div align="center"><a href="login.jsp">Login Now</a></div></td>
     
     
       <%
        }
         %>
     
     
     
       <%
         }
         else
         {
         %>       
        <td width="424"><div align="center">Registration failed!!</div>
          <div align="center"><a href="signup.jsp">sign up Now</a></div></td>
        <%
        }
         %>
        
        <td width="264">&nbsp;</td>
      </tr>
     
    </table>
  </div>
  </body>
</html>
