<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en" ng-app="myApp">
<head>

<meta charset="utf-8">


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular-route.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
</script>

</head>
<body>

	<form:form method="POST"  >

			<div >
					<h4 >
						<b>AngularJs</b>
					</h4>
			</div>
		
		<div >
			<div >
				<div >
						
								<li><a href="#/input/schedule">Schedule</a></li>
								<li><a href="#/input/actuals">Actuals</a></li>									
				</div>
			</div>
		</div>

		<div ng-view></div>

		<script src="js/control.js"></script>

	</form:form>
</body>
</html>