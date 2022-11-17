<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="UserHeader.jsp"/>
<div class="container-fluid">
	<div class="row" id="mainbtn">
		<div class="col-3 ">
			<a href="showalltravel.jsp?userid=${param.userid}"><button class="btn" id="funcbtn" style="background-color: #f75f5f" type="button"><h2>Booking</h2></button></a>
		</div>
		<div class="col-3">
			<button class="btn" id="funcbtn" style="background-color: #caf75f" type="button"><h3>Add Amount</h3></button>
		</div>
		<div class="col-3">
			<button class="btn" id="funcbtn" style="background-color: #faf284" type="button"><h2>Booking</h2> </button>
		</div>
		<div class="col-3 p-0">
			<button class="btn" id="funcbtn" style="background-color: #84ccfa" type="button"><h2>Booking</h2></button>
		</div>
	</div>
</div>
</body>
</html>