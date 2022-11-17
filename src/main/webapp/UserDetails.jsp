<%@page import="Training.BusBookingProject.User"%>
<%@page import="Training.BusBookingProject.UserDAO"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="HeaderHm.jsp"/>
<title>Register Page</title>
<link rel="stylesheet" href="Css/FormDetail.css">
<script type="text/javascript" src="/jquery/jquery-3.6.0.min.js"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>
$(function(){
	$("#cpassword").blur(function(){
		var pss=$("#password").val();
		var cpss=$("#cpassword").val();
		
		if(pss!==cpss){
			$("#error").html("**Password not matched");  
			$("#password").val("");
			$("#cpassword").val("");
		}
	});
});
</script>
<h1 id="">New User Details</h1>
<div class="container-fluid">
<div id="error" style="color:red; text-align: center; font-weight: bolder;"></div>
<div class="row">
	<div class="col-7 ">
	<form method="post" action="" name="myForm">	
	<div class="row">
		<div class="col-30">
		<label for="fname">Full Name :</label>
		</div>	
		<div class="col-80">
		    <input type="text" name="fullname" placeholder="Enter Full Name" required="required"/> <br/><br/>
		</div>
	</div>	
	<div class="row">
		<div class="col-30">
		<label for="number">Contact No :</label>
		
		</div>	
		<div class="col-80">	
			<input type="text" name="contactno" placeholder="Enter Contact No." required="required" max="10"/> <br/><br/>
		</div>
	</div>	
	
	<div class="row">
		<div class="col-30">
	<label for="email">Email Address :</label>
			
		</div>	
		<div class="col-80">
			<input type="text" name="emailaddress" id="emailaddress" placeholder="Enter Email Address"/> <br/><br/>
		</div>
	</div>
		
	<div class="row">
		<div class="col-30">
		<label for="email">User Name :</label>
		</div>	
		<div class="col-80">
			<input type="text" name="username" placeholder="Enter User ID OR UserName"/> <br/><br/>
		</div>
	</div>	
	
	<div class="row">
		<div class="col-30">
	<label for="password">Password :</label>	
		</div>	
		<div class="col-80">
			<input type="password" name="password" id="password" placeholder="Password"/> <br/><br/>
		</div>
	</div>
		<div class="row">
		<div class="col-30">
	<label for="password">Confirm Password :</label>	
		</div>	
		<div class="col-80">
			<input type="password" name="cpassword" id="cpassword" placeholder="Password"/> <br/><br/>
			<span id = "message" style="color:red"> </span> <br><br>
		</div>
	</div>
	<div class="row">
	<input type="submit" id="submitForm" value="Submit" onclick="validateForm()" />
		
	</div>	
	</form>
	
	</div>

	<c:if test="${param.fullname!=null}">
		<jsp:useBean id="beanDao" class="Training.BusBookingProject.UserDAO"/>
		<jsp:useBean id="users" class="Training.BusBookingProject.User"/>
		<jsp:setProperty property="*" name="users"/>
		<c:set var="out" value="${beanDao.Adduser(users)}"/>
	</c:if>
	<div class="col-5">
			<img src="./image/busgif.gif" id="gg" alt="Italian Trulli"></div>		
	
	</div>		
</div>

</body>
</html>