<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<hr>
<center><h1>INVENTORY MANAGEMENT</h1></center>
<hr>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
    <form method="post">           
    User Name:
            <input type="text" name="userName" maxlength="10" ><br><br>
            Password:
            <input type="password" name="passWord" maxlength="10" required><br><br>
            <input type="submit" value="SIGN IN"> <br><br>
            </center>
    </form>
    <center><a href="AddAdmin.jsp"><button>SIGN UP</button></a></center>
    <c:if test="${param.userName != null && param.passWord != null}">
        <jsp:useBean id="dao" class="com.Infinite.inventoryproject.AdminDAO"/>
       	
       	<c:set var="user" value="${param.userName }"/>
       	<c:set var="password" value="${param.passWord }"/>
       	
        <c:out value="${dao.authenticate(user, password)}"/>
      
       <c:if test="${dao.authenticate(user, password) > 0 }">
            <jsp:forward page="AdminMenu.jsp"/>
        </c:if>
    </c:if>
    
    
    
    
    </body>
</html>