<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Login Form</title>
<jsp:include page="HeaderHm.jsp"/>
<link rel="stylesheet" href="Css/FormDetail.css">
<script type="text/javascript" src="/jquery/jquery-3.6.0.min.js"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<h1 id="">User Login</h1>

<div class="container-fluid">
<div id="error" style="color:red; text-align: center; font-weight: bolder;"></div>
<div class="row">
	<div class="col-7 mt-5">
		<form action="userCheck.jsp" method="post" name="myForm" >
			<div class="row">
				<div class="col-30">
					<label for="email">User Name :</label>
				</div>
				<div class="col-80">
					<input type="text" name="username" /> <br/><br/> 
				</div>
			</div>
			<div class="row">
				<div class="col-30">
					<label for="password">Password:</label>
				</div>
				<div class="col-80">
					<input type="password" name="password" /> <br/><br/>
				</div>
			</div>
		<input type="submit" id="submitForm" value="Login" />
		</form>
</div>
<div class="col-5 mb-5">
			<img src="./image/busgif.gif" id="gg" alt="Italian Trulli"></div>		
	
	</div>		
</div>
</div>


<c:if test="${param.username!=null &&param.password!=null}"/>
<jsp:useBean id="users" class="Training.BusBookingProject.User"/>
<jsp:setProperty property="*" name="users"/>
<jsp:useBean id="dao" class="Training.BusBookingProject.UserDAO"/>
<c:set var="user" value="${param.username}"/>
<c:set var="pwd" value="${param.password }"/>
<c:set var="cnt" value="${dao.checkUsers(user,pwd)}"/>
<c:forEach  var="ss" items="${dao.checkUsers(user,pwd)}">
	<c:set var="id" value="${ss.userid}"/>
	<c:redirect url="UserHome.jsp?userid=${ss.userid}"/> 
</c:forEach>
</body>
</html>