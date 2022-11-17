<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
    <form  method="get" action="ShowUser.jsp">
      <jsp:useBean id="beanDao" class="Training.BusBookingProject.UserDAO"/>
        <div class="heading">
          <h1>Show All User's</h1>  
          </div>
      
      <table border="3" align="center">
         <tr>
           <th>UserId</th>
           <th>Fullname</th>
           <th>contactno</th>
           <th>emailaddress</th>
           <th>UserName</th>
           <th>Password</th>
           <th>Update</th>
           <th>Delete</th>
          </tr>
          <c:forEach var="showUser" items="${beanDao.showUser(user)}" >
              <tr>
                 <td><c:out value="${showUser.userid}"/></td>
                 <td><c:out value="${showUser.fullname}"/></td>
                 <td><c:out value="${showUser.contactno}"/></td>
                 <td><c:out value="${showUser.emailaddress}"/></td>
                 <td><c:out value="${showUser.username}"/></td>
                 <td><c:out value="${showUser.password}"/></td>
                <td><button class="btn btn-outline-success" ><a href="UpdateUser.jsp">Update</a></</button></td>               
                 <td><button class="btn btn-outline-danger" ><a href="DeleteUser.jsp?id=${showBus.userid}">Delete</a></button></td> 
                 
              </tr>
           </c:forEach>
      </table>
    </form>
</body>
</html>