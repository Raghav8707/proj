<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title></title>
           <center> <h1>INVENTORY MANAGEMENT</h1></center> 
</head>
<body >
<center>
    <hr>  
       <b>Payment Details</b> 

	<jsp:useBean id="beanDao" class="com.Infinite.inventoryproject.WalletDAO"></jsp:useBean>

	<c:set var="pay" value="${beanDao.searchWallet(cid)}"/>
	<table border=5>
 
 
 
    <th>username</th>
    <td>${pay[0].userName}</td><hr>
    
    <th>Amount</th>
    <td>${pay[0].amt}</td>
 

  
   

	</table> 

	

</body>
</html>