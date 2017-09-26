
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >


<html lang="en">
<head>
  <title>Web News</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

<style>
body
{
background-color:#00CCFF;

}
#nt
{
width:80%}

.btn:hover {
    background-color: #4CAF50;
    color: red;
}

</style>







 <div class="container-fluid">
   <div class="col-md-4">
    
<div>
  <p><b>Heading</b></p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
 <div>
      <p>&nbsp; </p>
      Type<select name="list">
<option value="National">National</option>
<option value="Inter National">Inter National</option>
<option value="Politics">Politics</option>
<option value="Bollywood">Bollywood</option>
<option value="Circket">Circket</option>
</select></div>
<div>Content</div>
</div>
   <div class="col-md-8">
   
       <p>
         <input  type="text" width=100% name="nhead" >
       </p>
       <p>&nbsp;</p>
       <p>&nbsp; </p>
     </div>
    
     <div>
     

<textarea  rows=10% cols=100% name="usrtxt" wrap="hard">

</textarea>
<a href="Newsadded.jsp" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-upload"></span> Upload
        </a></div>


</div>
</div>

</body>
</html>