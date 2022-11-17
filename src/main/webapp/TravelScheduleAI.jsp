<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
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
<center>
<jsp:useBean id="beanDao" class="Training.BusBookingProject.BusDAO"/>
	<h1>Add Travel Schedule</h1>
	<form action="">
		Available Bus's :
		<select name="busid">
		<c:forEach var="busid" items="${beanDao.showAvailable()}">
			<option  var="busids" value="${busid}">${busid}</option>
		</c:forEach>
		</select><br/><br/>
		
		Available Driver :
		<select name="driverid">
		<c:forEach var="driverids" items="${beanDao.showDriverAvailable()}">
			<option  var="dids" value="${driverids}">${driverids}</option>
		</c:forEach>
		</select><br/><br/>
		Starting Point:
		<input type="text" name="startingpoint"><br/><br/>
		Destination Point:
		<input type="text" name="destinationpoint"><br/><br/>
		Starting Date:
		<input type="date" name="scheduledate"><br/><br/>
		Starting time:
		<input type="time" name="departuretime"><br/><br/>
		End Date:
		<input type="date" name="estimatearrivaldate"><br/><br/>
		End time:
		<input type="time" name="estimatearrivaltime"><br/><br/>
		Starting_Address
		<input type="text" name="addressstart"><br/><br/>
		End_Address
		<input type="text" name="addressend"><br/><br/>
		Fare Amount:
		<input type="number" name="fareamount"><br/><br/>
		Remark:
		<input type="text" name="remark"><br/><br/>
		<input type="submit" value="Save"><br/><br/>
	</form>

</center>

<c:if test="${param.busid!= null }">
		<jsp:useBean id="TravelDao" class="Training.BusBookingProject.TravelscheduleDAO"/>
	    <jsp:useBean id="travel" class="Training.BusBookingProject.TravelscheduleMain"/>
	    <jsp:setProperty property="busid" name="travel"/>
		<jsp:setProperty property="driverid" name="travel"/>
		<jsp:setProperty property="startingpoint" name="travel"/>
		<jsp:setProperty property="destinationpoint" name="travel"/>
		
		<%--Date--%>
		<fmt:parseDate value="${param.scheduledate}" pattern="yyyy-MM-dd" var="cd1"/>
		<c:set var="sqlDate1" value="${TravelDao.convertDate(cd1)}" />
			<c:out value="${sqlDate1}"/>
		<fmt:parseDate value="${param.estimatearrivaldate}" pattern="yyyy-MM-dd" var="cd2"/>
		<c:set var="sqlDate2" value="${TravelDao.convertDate(cd2)}"  />
			<c:out value="${sqlDate2}"/>
	
		<jsp:setProperty property="scheduledate" name="travel" value="${sqlDate1}"/>
		<jsp:setProperty property="estimatearrivaldate" name="travel" value="${sqlDate2}"/>
		
		
		<jsp:setProperty property="departuretime" name="travel"/>
		<jsp:setProperty property="addressstart" name="travel"/>
		<jsp:setProperty property="addressend" name="travel"/>
		<jsp:setProperty property="estimatearrivaltime" name="travel"/>
	    <jsp:setProperty property="fareamount" name="travel"/>
		<jsp:setProperty property="remark" name="travel"/>
		
	<c:out value="${TravelDao.AddTrvelSchedule(travel)}"></c:out>
</c:if>
</body>
</html>