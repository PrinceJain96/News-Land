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
<script type="text/javascript">
<script LANGUAGE="JavaScript">
function getParams(){
var idx = document.URL.indexOf('?');
var params = new Array();
if (idx != -1) {
var pairs = document.URL.substring(idx+1, document.URL.length).split('&');
for (var i=0; i<pairs.length; i++){
nameVal = pairs[i].split('=');
params[nameVal[0]] = nameVal[1];
}
}
return params;
}
params = getParams();
firstname = unescape(params["nhead"]);
lastname = unescape(params["usrtxt"]);

document.write("firstname = " + firstname + "<br>");
document.write("lastname = " + lastname + "<br>");

</script>

</script>
	 <%System.out.print(request.getParameter("nhead"));
	 
	 Connection con=dbinfo.con;
	    
	    String query="insert into ndetaile(ntopic,nch,ntype,ntext) values(?,?)";
	   String x= request.getParameter("list");
	   int t=0;
	   if(x.equalsIgnoreCase("National"))
	   {t=1;
		   
	   }
	   if(x.equalsIgnoreCase("Circket"))
	   {t=2;
		   
	   }
	   if(x.equalsIgnoreCase("Politics"))
	   {t=3;
		   
	   }
	   if(x.equalsIgnoreCase("Bollywood"))
	   {t=4;
		   
	   }
	   if(x.equalsIgnoreCase("Inter National"))
	   {t=5;
		   
	   }
	   System.out.print(t);
	   
	      PreparedStatement ps12=con.prepareStatement(query);
	    
	 ps12.setString(1,request.getParameter("nhead"));
	 ps12.setString(4,request.getParameter("usrtxt"));
 ps12.setInt(2,Integer.parseInt(session.getAttribute("id").toString()));
ps12.setInt(3,t);

	      int x1=ps12.executeUpdate();
	    
	      %>
</body>
</html>