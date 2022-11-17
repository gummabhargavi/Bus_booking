<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <h1>User Details</h1>
     <form method="get" action="UpdateUser.jsp">
         User Id :
            <input type="text" name="userid"/> <br/><br/> 
         Full Name :
            <input type="text" name="fullname"/> <br/><br/> 
         ContactNo :
            <input type="text" name="contactno"/> <br/><br/>   
         EmailAddress :
           	<input type="number" name="emailaddress"/> <br/><br/>
         username :
           	<input type="text" name="username"/> <br/><br/>
          password :
           	<input type="number" name="password"/> <br/><br/> 	  	  
		 <input type="submit" value="Update Driver"/>  
				
     </form>
     <c:if test="${param.userid!=null}">
      <jsp:useBean id="beanDao" class="Training.BusBookingProject.UserDAO"/>
      <jsp:useBean id="user" class="Training.BusBookingProject.User"/>
      <jsp:setProperty property="*" name="user"/>
      <c:out value="${beanDao.updateUser(user)}"/>
     </c:if>
     

</body>
</html>