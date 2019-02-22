<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<div>
		<h4>
			<b>Sample</b>
		</h4>
	</div>
		
	<div >
		<form:form method="POST" action="/submit">
			
			<div >
				<label >FirstName</label> <input type="text"
					name="firstname"  required />
			</div>
			<div >
				<label >LastName</label> <input type="text"
					name="lastname"   required />
			</div>
			<div >
				<button type="submit">Login</button>
			</div>
		</form:form>
	</div>
</div>
</body>
</html>