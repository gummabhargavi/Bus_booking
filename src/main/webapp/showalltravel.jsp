<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<script type="text/javascript">
function myFunction() {
	  // Declare variables
	  var input, filter, table, tr, td, i;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable");
	  tr = table.getElementsByTagName("tr");

	  // Loop through all table rows, and hide those who don't match the search query
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[3];
	    if (td) {
	      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }
	  }
	
	  
	}

</script>
<style>
#myInput {
    background-image: url('/css/searchicon.png'); /* Add a search icon to input */
    background-position: 10px 12px; /* Position the search icon */
    background-repeat: no-repeat; /* Do not repeat the icon image */
     width:20%; /* Full-width */
    font-size: 16px; /* Increase font-size */
    padding: 12px 20px 12px 40px; /* Add some padding */
    border: 1px solid #ddd; /* Add a grey border */
    margin-bottom: 12px; /* Add some space below the input */
}

#myTable {
    border-collapse: collapse; /* Collapse borders */
    width: 100%; /* Full-width */
    border: 1px solid #ddd; /* Add a grey border */
    font-size: 18px; /* Increase font-size */
}

#myTable th, #myTable td {
    text-align: left; /* Left-align text */
    padding: 12px; /* Add padding */
}

#myTable tr {
    /* Add a bottom border to all table rows */
    border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
    /* Add a grey background color to the table header and on hover */
    background-color: #f1f1f1;
}
</style>


<body><center>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for pickup">
	 <form method="get" action="">
        <jsp:useBean id="beanDao" class="Training.BusBookingProject.TravelscheduleDAO"/>
          <div class="heading">
          <h1>Show All Travels</h1>  
          </div>
          
               
         <table border="3" align="center" id="myTable">
            <tr>
              <th>Pick Up Place</th>
              <th>Destination Place</th>
              <th>Journey Start Date</th>
              <th>Journey Start Time</th>
              <th>Journey End Date</th>
              <th>Journey End Time</th>
               <th>Starting Address</th>
                <th>Destination address</th>
              <th>Fare Amount</th>
              <th>Remark</th>
              <th>Booked</th>
            </tr>
           <c:forEach var="showBus" items="${beanDao.showTravel()}" >
              <tr>
                 <td><c:out value="${showBus.startingpoint}"/></td>
                 <td><c:out value="${showBus.destinationpoint}"/></td>
                 <td><c:out value="${showBus.scheduledate}"/></td>
                 <td><c:out value="${showBus.departuretime}"/></td>
                 <td><c:out value="${showBus.estimatearrivaldate}"/></td>
                 <td><c:out value="${showBus.estimatearrivaltime}"/></td>
                 <td><c:out value="${showBus.addressstart}"/></td>
                 <td><c:out value="${showBus.addressend}"/></td>
                 <td><c:out value="${showBus.fareamount}"/></td>
                 <td><c:out value="${showBus.remark}"/></td>
                 <td><a href="Booking.jsp?scheduleid=${showBus.scheduleid}&userid=${param.userid}">Booked</a></td>
              </tr>
           </c:forEach>   
         </table>
   
     </form>
     </center>
</body>
</html>