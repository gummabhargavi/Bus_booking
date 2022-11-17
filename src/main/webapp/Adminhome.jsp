<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="Adminheader.jsp"/>
<script type="text/javascript" src="/jquery/jquery-3.6.0.min.js"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
</head><div class="container-fluid">
	<div class="row" id="mainbtn">
	   
		<div class="col-3 ">
			<a href="ShowBus.jsp"><button class="btn" id="funcbtn" style="background-color: #f75f5f" type="button"><h2>Bus's</h2></button></a>
		</div>
		<div class="col-3">
			<a href="ShowDriver.jsp"><button class="btn" id="funcbtn" style="background-color: #caf75f" type="button"><h2>Driver's</h2></button></a>
		</div>
		<div class="col-3">
			<a href="ShowTSchedule.jsp"><button class="btn" id="funcbtn" style="background-color: #faf284" type="button"><h3>Travel schedule</h3> </button>
		</div>
		<div class="col-3 p-0">
			<a href="ShowUser.jsp"><button class="btn" id="funcbtn" style="background-color: #84ccfa" type="button"><h2>User's</h2></button></a>
		</div>
	</div>
<div class="row" id="mainbtn">
		<div class="col-3 ">
			<a href=""><button class="btn" id="funcbtn" style="background-color: #f75f5f" type="button"><h2>Payments</h2></button></a>
		</div>
		<div class="col-3">
			<a href="ShowWallet.jsp"><button class="btn" id="funcbtn" style="background-color: #caf75f" type="button"><h2>Wallets</h2></button></a>
		</div>
		<div class="col-3">
			<a href="ShowRefund.jsp"><button class="btn" id="funcbtn" style="background-color: #faf284" type="button"><h3>Refunds</h3> </button></a>
		</div>
		<div class="col-3 p-0">
			<button class="btn" id="funcbtn" style="background-color: #84ccfa" type="button"><h2>Booking's</h2></button>
		</div>
	</div>
</div>


</body>
</html>