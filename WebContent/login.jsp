
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="../css/image.css" />
</head>
<body background="img/stock2.png">

 <div align="center"> 
 <p></p>
	<div class="container">
		<div class="card">
			<div class="card-header" class="btn btn-primary"><h1>Mitarbeiter Login</h1></div>
  
  <form action="<%= request.getContextPath() %>/login" method="post">
   <table style="with: 80%">
    <tr>
     <td>Username</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
    
   </table>
   		
   <input type="submit" value="Submit" class="btn btn-primary"/>
  </form>
 </div>
 			</div>
 			</body>
</html>