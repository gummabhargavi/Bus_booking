<%@page import="java.util.ArrayList"%>
<%@page import="Training.BusBookingProject.Booking"%>
<%@page import="java.util.List"%>
<%@page import="Training.BusBookingProject.TravelscheduleDAO"%>
<%@page import="Training.BusBookingProject.TravelscheduleMain"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="UserHeader.jsp"/>
<head>
<script type="text/javascript" src="/jquery/jquery-3.6.0.min.js"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

<script type="text/javascript">
	function fun() {
		confirm("Are you sure to book the Ticket");
		$("#error").html("**Successfull**");  
	
	}

</script>
<title>Insert title here</title>


<style>
input[type=text], input[type=email], input[type=number],select, input[type=date],input[type=select],input[type=password], input[type=tel]
{
    width: 45%;
    padding: 12px;
    border: 1px solid rgb(168, 166, 166);
    border-radius: 4px;
    resize: horizontal;
}
label{
    padding: 12px 12px 12px 0;
    display: inline-block;
}
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float:left;
    margin-left: 30%;
}
input[type=submit]:hover {
background-color: #32a336;
}
h1{
	text-align: center;
	font-style: oblique;
	color: gray;
	text-decoration: underline;
}

.col-30{
    float: left;
    width:20%;
    margin-top: 6px;
}
.col-80{
    float: left;
    width: 80%;
    margin-top: 6px;
}
.row:after{
    content: "";
    display: table;
    clear: both;
}
@media screen and (max-width: 600px){
    .col-10,.col-90,input[type=submit]{
        width: 100%;
        margin-top: 0;
    }
}

</style>
</head>
	<jsp:useBean id="UserDAO" class="Training.BusBookingProject.UserDAO"/>
	<jsp:useBean id="BusDAO" class="Training.BusBookingProject.BusDAO"/>
	<jsp:useBean id="TravelDAO" class="Training.BusBookingProject.TravelscheduleDAO"/>
	<c:set var="tra" value="${param.scheduleid}"/>
		<c:if test="${param.seatNo == null }">
				<c:set var="travel" value="${TravelDAO.SearchTravelId(tra)}"/>
		</c:if>
		<c:set var="bid" value="${travel.busid}"/>
  		
  		<h1 style="text-align: center; font-family: cursive;color: gray; text-decoration:underline;">Booking</h1>
 		<center>
 		<div class="container-fluid ">
 		<form method="post" action="" name="myForm">
 		<div class="container mt-3">
     
        <table class="table table-bordered">
            <thead>
                   <div  name="scheduleId" value="${tra}"></div>
                   <div  name="userId" value="${param.userid}"></div>
              
            </thead>
             <thead>
                <tr>
                  <th>Passenger_name   </th>
                  <th><input type="text" name="pname" required="required"/></th>
                </tr>
            </thead>
             <thead>
                <tr>
                  <th>Passenger_age  </th>
                  <th><input type="number" name="page" required="required"/></th>
                </tr>
            </thead>
             <thead>
                <tr>
                  <th>Passenger_Gender</th>
                  <th><c:choose>
    			<c:when test="${posting.postingStatus eq 'Active'}">
    					<input type="radio" name="pgender" id="status" value="MALE" checked="checked"/>
   							 MALE&nbsp; 
   						 <input type="radio" name="pgender" id="status" value="FEMALE"/>
   							 FEMALE
    			</c:when>
    			<c:otherwise>
    						<input type="radio" name="pgender" id="status" value="MALE" />
    						MALE&nbsp;
    						<input type="radio" name="pgender" id="status" value="FEMALE" checked="checked"/>
    						FEMALE
    			 </c:otherwise> 
    		</c:choose> </th>
                </tr>
            </thead>
            <thead>
            <c:set var="f" value="${(travel.fareamount*3)/10+travel.fareamount}"/>
                <tr>
                  <th>Fare Amount : ${travel.fareamount}</th>
                  <th>Total Amount: : ${f}</th>
                </tr>
            </thead>
             <thead>
                <tr>
                  <th>Select No : <select name="seatNo">
			<c:forEach items="${UserDAO.book(tra)}" var="seat2">
   			 <option value="${seat2}"> <c:out value="${seat2}"/></option>
   			 <br>
			</c:forEach>	
	</select></th>
                  <th><button class="btn btn-success m-3" type="submit" onclick="fun()">Book</button></th>
                
                </tr>
            </thead>
        </table>
    </div>
 			
       </form>
      
       </div>
       </center>
      <c:if test="${param.pname!=null}">
      <c:set var="travel" value="${TravelDAO.SearchTravelId(tra)}"/>
      <c:set var="f" value="${(travel.fareamount*3)/10+travel.fareamount}"/>
  			<jsp:useBean id="Dao" class="Training.BusBookingProject.UserDAO"/>
    		<jsp:useBean id="book" class="Training.BusBookingProject.Booking"/>
    <jsp:setProperty property="pname" name="book" value="${param.pname}"/>
    <jsp:setProperty property="page" name="book" value="${param.page}"/>
    <jsp:setProperty property="pgender" name="book" value="${param.pgender}"/>
    <jsp:setProperty property="scheduleId" name="book" value="${tra}"/>
    <jsp:setProperty property="userId" name="book" value="${param.userid}"/>
    <jsp:setProperty property="fareAmount" name="book" value="${travel.fareamount}"/>
    <jsp:setProperty property="totalAmount" name="book" value="${f}"/>
    <jsp:setProperty property="seatNo" name="book" value="${param.seatNo}"/>
    <c:set var="rst" value="${Dao.addBooking(book)}"/>
 <%
    String resp = "Gaurav"; 
    resp =(String)pageContext.getAttribute("rst");
  %> 
<h4 class="text-white text-center bg-danger w-25 "><%=resp%></h4>
    
</c:if>
<c:set value="${param.userid}" var="ss"/>
<c:set value="${tra}" var="uu"/>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Seat No.</th>
      <th scope="col">Fare Amount</th>
      <th scope="col">Total Amount</th>
      <th scope="col">Passenger Name</th>
      <th scope="col">Passenger Age</th>
      <th scope="col">Passenger Gender</th>
      <th scope="col">Payment</th>
      <th scope="col">Cancel</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    <c:if test="${param.userid!=null}">
     <c:forEach var="showBus" items="${UserDAO.ShowBookingOp(uu,ss)}">
                 <td><c:out value="${showBus.seatNo}"/></td>
                 <td><c:out value="${showBus.fareAmount}"/></td>
                 <td><c:out value="${showBus.totalAmount}"/></td>
                 <td><c:out value="${showBus.pname}"/></td>
                 <td><c:out value="${showBus.page}"/></td>
                 <td><c:out value="${showBus.pgender}"/></td>
                 <td><button class="btn btn-success">Payment</button></td>
                 <td><a href="${vv}"><button class="btn btn-danger">Cancel</button></</a></td>
                 <c:set var="vv" value="${UserDAO.CancelTicets(showBus.bookingId)}"/>
      
    </tr>
    </c:forEach>
      </c:if>
  </tbody>
</table>
</body>
</body>
</html>