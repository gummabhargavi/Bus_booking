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
       <h1>Driver Details</h1>
     <form method="get" action="UpdateDriver.jsp">
         Driver Id :
            <input type="text" name="driver_id"/> <br/><br/> 
         Driver Name :
            <input type="text" name="driver_name"/> <br/><br/> 
         Driver lic no :
            <input type="text" name="driver_lic_no"/> <br/><br/>   
         Contact No :
           	<input type="number" name="contact_no"/> <br/><br/>  
		 <input type="submit" value="Update Driver"/>  
				
     </form>
     <c:if test="${param.driver_id!=null}">
      <jsp:useBean id="beanDao" class="Training.BusBookingProject.BusDAO"/>
      <jsp:useBean id="driver" class="Training.BusBookingProject.DriverDetails"/>
      <jsp:setProperty property="*" name="driver"/>
      <c:out value="${beanDao.updateDriver(driver)}"/>
     </c:if>
     <a href="ShowDriver.jsp">ShowDriver</a>
</body>
</html>