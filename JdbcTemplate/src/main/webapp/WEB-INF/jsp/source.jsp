<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#table
{
border-collapse: collapse;
}
tr,th,td
{
padding: 8px;
}
</style>
</head>
<body>
<form>
<h1>Customer List</h1>
<table border="1" id="table">
<tr><th>Name</th><th>ID</th></tr>
 <c:forEach var="cust" items="${list}"> 
 <tr><td>${cust.name}</td><td>${cust.id}</td>
 </tr>
 </c:forEach> 
</table>
</form>
</body>
</html>