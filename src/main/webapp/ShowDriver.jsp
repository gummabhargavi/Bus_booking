<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
font-family: inherit;
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
    <form method="get" action="ShowDriver.jsp">
      <jsp:useBean id="beanDao" class="Training.BusBookingProject.BusDAO"/>
          <div class="heading">
          <h1>Show All Driver's</h1>  
      		<button class="btn btn-success m-5"><a href="AddDriver.jsp">Add Bus</a></button>
          </div>
      
      <table border="3" align="center">
        <tr>
          <th>DriverId</th>
          <th>DriverName</th>
          <th>DriverLicNo</th>
          <th>ContactNo</th>
          <th>UpdateDriver</th>
          <th>DeleteDriver</th>
          </tr>
         
         <c:forEach var="showDriver" items="${beanDao.show()}">
           <tr>
             <td><c:out value="${showDriver.driver_id}"/></td>
             <td><c:out value="${showDriver.driver_name}"/></td>
             <td><c:out value="${showDriver.driver_lic_no}"/></td>
           
            <td><c:out value="${showDriver.contact_no}"/></td>
             <td><button class="btn btn-outline-success" ><a href="UpdateDriver.jsp">update</a></button></td>
             <td> <button class="btn btn-outline-danger"><a href="DeleteDriver_2.jsp?id=${showDriver.driver_id}">delete</a></button></td>
          
            <tr> 
         
         </c:forEach>  
      </table>
    </form>
</body>
</html>