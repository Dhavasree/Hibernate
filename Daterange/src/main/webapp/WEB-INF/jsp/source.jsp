<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />


<script>
	$(function() {
		 $("#datetimepicker1").css("pointer-events", "none");
		$("#datetimepicker2").css("pointer-events", "none");
	});
		/* $("#datetimepicker1").focus(function()
				{
			$("#datetimepicker1").css("pointer-events", "none");
				}); */
		/* $("#datetimepicker1").focus(function()
				{
			$("#datetimepicker1").css("pointer-events", "none");
				});  */
		//$("#datetimepicker1").unbind('click');
		//$("#datetimepicker1").keypress(function(event) {event.preventDefault();});
		
		/* $("#datetimepicker1").focus(function()
				{
			$(this).daterangepicker("hide");
				});
		$("#datetimepicker1").click(function()
				{
			$(this).daterangepicker("hide");
				}); */
		
</script>
<body>
   <form id="date">
		Start Date:<br> <input type="text"  value="${datetimepicker1}" readonly ><br>
		End Date: <br> <input type="text" value="${datetimepicker2}"  readonly ><br>
	   <br><input type="submit" value="Submit">
	 </form>
</body>
</html>


