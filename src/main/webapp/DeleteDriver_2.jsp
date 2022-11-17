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
    <jsp:useBean id="dao" class="Training.BusBookingProject.BusDAO"/>
    <c:set var ="id" value="${param.id}"/>
    <c:out value="${id}"/>
    <c:out value="${dao.deleteDriver(id)}"/>
</body>
</html>