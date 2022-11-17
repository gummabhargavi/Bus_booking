<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="Adminheader.jsp"/>
<script type="text/javascript" src="/jquery/jquery-3.6.0.min.js"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
</head>
<style>
body{

}
table {
	 border-collapse: collapse;
}
.heading{
text-align:center;
font-family: cursive;
}
th, td {
  padding: 8px;
  text-align: center;
  border-bottom: 1px solid #ddd;
}

tr:hover {

background-color: #D0EEE1;
}

th {
  background-color: #04AA6D;
  color: white;
}


</style>

<body>
   <form method="get" action="ShowTSchedule.jsp">
        <jsp:useBean id="beanDao" class="Training.BusBookingProject.TravelscheduleDAO"/>
          <div class="heading">
          <h1>Show All TravelSchedule</h1>  
      		<button class="btn btn-success m-5"><a href="TravelScheduleAI.jsp">Add</a></button>
          </div>
          
               
         <table border="3" align="center">
            <tr>
              <th>scheduleid</th>
              <th>busid</th>
              <th>driverid</th>
              <th>startingpoint</th>
              <th>destinationpoint</th>
              <th>scheduledate</th>
              <th>departuretime</th>
              <th>estimatearrivaldate</th>
              <th>estimatearrivaltime</th>
              <th>fareamount</th>
              <th>remark</th>
            </tr>
           <c:forEach var="showBus" items="${beanDao.showTSchedule(ts)}" >
              <tr>
                 <td><c:out value="${showBus.scheduleid}"/></td>
                 <td><c:out value="${showBus.busid}"/></td>
                 <td><c:out value="${showBus.driverid}"/></td>
                 <td><c:out value="${showBus.startingpoint}"/></td>
                 <td><c:out value="${showBus.destinationpoint}"/></td>
                 <td><c:out value="${showBus.scheduledate}"/></td>
                 <td><c:out value="${showBus.departuretime}"/></td>
                 <td><c:out value="${showBus.estimatearrivaldate}"/></td>
                 <td><c:out value="${showBus.estimatearrivaltime}"/></td>
                 <td><c:out value="${showBus.fareamount}"/></td>
                 <td><c:out value="${showBus.remark}"/></td>
              </tr>
           </c:forEach>   
         </table>
     
         
           
           
          
   
     </form>

</body>
</html>