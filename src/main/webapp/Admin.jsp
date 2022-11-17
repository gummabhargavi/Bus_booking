<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Login Form</title>
<jsp:include page="HeaderHm.jsp"/>
<link rel="stylesheet" href="Css/FormDetail.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<h1 id="">Admin Login</h1>
<div class="container-fluid">
<div id="error" style="color:red; text-align: center; font-weight: bolder;"></div>
<div class="row">
	<div class="col-7 mt-5">
			<form action="" method="post" name="myForm" >
			<div class="row">
				<div class="col-30">
					<label for="email">User Name :</label>
				</div>
				<div class="col-80">
					<input type="text" name="adminName" size="30" /><br/><br/>
				</div>
			</div>
			<div class="row">
				<div class="col-30">
					<label for="password">Password:</label>
				</div>
				<div class="col-80">
					<input type="password" name="password" size="30"/><br/><br/>
				</div>
			</div>
		<input type="submit" value="AdminLogin"/> <br/><br/>
		</form>
</div>
<div class="col-5 mb-5">
			<img src="./image/busgif.gif" id="gg" alt="Italian Trulli"></div>		
	
	</div>		
</div>
    <c:if test="${param.adminName != null && param.password!= null}">
        <jsp:useBean id="admin" class="Training.BusBookingProject.Admin"/>
        <jsp:useBean id="beanDao" class="Training.BusBookingProject.AdminDAO"/>
         <c:set var="adminName" value="${param.adminName}"  />
         <c:set var="password" value="${param.password}"  />
         <c:set var="count" value="${beanDao.adminCheck(adminName, password)}"/>
         <c:set var="admin" value="${admin}" scope="session"/>
         <c:if test="${count==1}">
        	 <% response.sendRedirect("Adminhome.jsp");%>
         </c:if>
         <c:if test="${count==0}">
           <c:out value="Invalid creaditialss..."></c:out>
         </c:if>
    
    </c:if>

</body>
</html>