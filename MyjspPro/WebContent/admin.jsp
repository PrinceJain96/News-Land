<!DOCTYPE html >
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style>
#b2

{background-color:#00FF00;

cursor:pointer;
text-align:center;
text-decoration:none;
margin: 10% 10% 10% 10%;
border-radius: 50%;
}

#b1
{background-color:#FF0000;

text-align:center;
text-decoration:none;
margin: 10% 10% 10% 10%;
border-radius: 12px;
}
#b1:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
div
{background-color:#330066;
padding-top:20px;}
body
{
background-color:#33CCCC;}

#b2:active {
  background-color: #3e8e41;
  box-shadow: 30 40px #666;
  transform: translateY(4px);
}

.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  width:70%;
 border: none;
}
</style>






</head>
<body>
<%@include file="header.html" %>
<b>
<strong>
<marquee style="color: red " direction="right">

Hello Admin
</marquee>
</strong>
<b>

<div class="container-fluid">
  <div class="row">
  <div class="col-md-6"><button id="b1" onclick="location.href='chadd.jsp'" class="button" >Add new Channel</button>
</div> 


<div class="col-md-6">
<button id="b2" class="button">Click Me</button>
 </div> 
 
 
   <div class="row">
  <div class="col-md-6"><button id="b1" class="button" onclick="location.href='chdel.jsp'">Delete new Channel</button>
</div> <div class="col-md-6"><button id="b2" class="button">Click Me</button>
 </div> </div>
   <div class="row">
  <div class="col-md-6">
<button id="b1" class="button"onclick="location.href='newsdel.jsp'">Delete News</button>

</div> <div class="col-md-6">
<button id="b2" class="button">Click Me</button> </div> </div>
 
 
 
 </div>
  </div>
</body>
</html>