<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="beanDao" class="Training.BusBookingProject.BusDAO"/>
<form method="get" action="">
<center>
		Enter Name :
		<input type="text" name ="driver_name"/><br/><br/>
		Enter Lic-no :
		<input type="text" name ="driver_lic_no"/><br/><br/>
		Enter contact-no :
		<input type="number" name ="contact_no"/><br/><br/>
		<input type="submit" value ="Insert"/><br/><br/>
	</center>
	
<c:if test="${param.driver_name!= null && param.driver_lic_no != null}" >
	<jsp:useBean id="beanDriverDetailsDAO" class="Training.BusBookingProject.BusDAO" />
	<jsp:useBean id="beanDriverDetails" class="Training.BusBookingProject.DriverDetails" />
	<jsp:setProperty property="*" name="beanDriverDetails" />
	<c:out value="${beanDriverDetailsDAO.addDriver(beanDriverDetails)}"/>
</c:if>
</form>
</body>
</html>