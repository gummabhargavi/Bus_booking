<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
body{
 background-color: lightblue;

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

background-color: #3DCE65;
}

th {
  background-color: #04AA6D;
  color: white;
}


</style>


<body>
     
     <form method="get" action="WalletUpdate.jsp">
      <center>
       <div class="heading">
          <h1>Wallet Update</h1>  
          </div>
          
          Wallet Id :
          <input type="text" name="walletId"/> <br/><br/>
          
        Wallet Type :
          <select name="walletType">
               <option value="PHONE_PAY">PHONE_PAY</option>
               <option value="GOOGLE_PAY">GOOGLE_PAY</option>
               <option value="PAYTM">PAYTM</option>
               <option value="CASH">CASH</option>
          </select> <br/><br/>
        Wallet Amount :
          <input type="number" name="walletAmount"/> <br/><br/> 
       User Id :
          <input type="text" name="userId"/> <br/><br/>
          <input type="submit" value="Add Wallet"/> <br/><br/>
    
     </form>
     <c:if test="${param.walletType!=null}">
           <jsp:useBean id="beanDao" class="Training.BusBookingProject.BusDAO"/>
           <jsp:useBean id="beanWallet" class="Training.BusBookingProject.Wallet"/>
           <jsp:setProperty property="*" name="beanWallet"/>
           <c:out value="${beanDao.updateWallet(beanWallet)}"/>
          
          </c:if>
     </center>
     
</body>
</html>