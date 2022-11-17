<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Css/Home.css">
<link rel="stylesheet" href="Css/bootstrap.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="js/jquery-3.5.1.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="/jquery/jquery-3.6.0.min.js"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
</head>
<body>
<style>
nav{background-color: #bababa}
#funcbtn{
background-color:blue;
width:20ex;
height:10ex;
}
#mainbtn{
margin-left:20ex;
padding-top: 10ex;
}
#usern{
text-align:right;
padding-top:3ex;

}

</style>
<div class="jumbotron jumbotron-fluid mb-0">
  <div class="container" align="center">
  <div class="row">
   	<div class="col-3">
   		 <img src="./image/bus.png" alt="Italian Trulli">
    </div>
 	 <div class="col-6">
    	<h1 class="display-5" id="main_Heading">Bus Booking System</h1>
    </div>
    <div class="col-3" id="Logbtn">
   		<a href=""><button class="btn btn-danger" type="button">Log Out</button></a>
   </div>

<jsp:useBean id="UserDAO" class="Training.BusBookingProject.UserDAO"/>

   </div>
   <h4 id="usern">Wellcome..!Admin</h4>  
</div>
</div>
<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">BuS's</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Pricing</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
    </div>
  </div>
</nav>


	

</body>
</html>