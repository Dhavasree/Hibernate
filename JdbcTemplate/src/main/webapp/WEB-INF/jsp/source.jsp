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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
	<script type="text/javascript">
	$(document).ready(function() {
		var text=new Array();
		text=$('#hid').val();
		
		alert(text);
		var op = text.filter(function (e) {
			  return e.name;
			});
		alert(op);
		document.getElementById("drop").value=text;
		$("#pass").submit(function(e)
				{
			
			 /* text = $('#name').find('option:selected').val(); */
			
			
				});
	});
	</script>
<body>
<form:form id="pass" modelAttribute="list" action="list">
<h1>Customer List</h1>
<input type="hidden" id="hid" value='${list}'>
<select name="name" id="drop"></select>

<%-- Name:
<select name="name" id="name">
<c:forEach var="cust" items="${list}"> 
 <option value="${cust.id}">${cust.name}</option>
</c:forEach>
</select> --%>
<%-- ID:
<select name="id" id="id">
<c:forEach var="cust" items="${list}"> 
 <option value="${cust.id}">${cust.id}</option>
</c:forEach>
</select> --%>
<input type="submit" value="submit" >
<%-- <table border="1" id="table">
<tr><th>Name</th><th>ID</th></tr>
 <c:forEach var="cust" items="${list}"> 
 <tr><td>${cust.name}</td><td>${cust.id}</td>
 </tr>
 </c:forEach> 
</table> --%>
</form:form>
</body>
</html>