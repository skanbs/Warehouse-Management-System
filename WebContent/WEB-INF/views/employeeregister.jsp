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
<body background="img/stock.png">

 <div align="center"> 
 <p></p>
	<div class="container">
		<div class="card">
			<div class="card-header" class="btn btn-primary"><h1>Mitarbeiter Registrierung</h1></div>
  
  <form action="<%= request.getContextPath() %>/register" method="post">
  
   <table style="with: 80%">
    <tr>
     <td>Vorname</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
     <td>Nachname</td>
     <td><input type="text" name="lastName" /></td>
    </tr>
    <tr>
     <td>Username</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
    <tr>
     <td>Adresse</td>
     <td><input type="text" name="address" /></td>
    </tr>
    <tr>
     <td>Telefonummer</td>
     <td><input type="text" name="contact" /></td>
    </tr>
   </table>
   		
   <input type="submit" value="Registrieren" class="btn btn-primary"/>
   <a href="login.jsp" class="btn btn-primary">Zum Login</a> 
  </form>

 </div>
 			</div>
 			</body>
</html>