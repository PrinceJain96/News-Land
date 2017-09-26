<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<style>
/* Full-width input fields */
body {
  background: #eee !important;
}
form
{
background-color:#00CCFF;
max-width:80%;
margin:30px 10% auto 10%;}
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
background-color:#996633;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}
.h2
{
text-align:center;}

</style>
<body>
    
<div>
<form action="regdone.jsp" style="border:1px solid #ccc" >
  <div class="container">
    <label><b>uname</b></label>
    <input type="text" placeholder="Enter Uname" name="uname" required>
    
    
    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <label><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
  
    <div class="clearfix">
      <button type="submit" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn" >Sign Up</button>
    </div>
  </div>
    </div>
</form>
</body>
</html>
