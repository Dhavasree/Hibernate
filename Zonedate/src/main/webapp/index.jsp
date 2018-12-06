<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
</style> 
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
<!-- <script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/js/bootstrap-datetimepicker.min.js"></script>

<!-- <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css">
<script type="text/javascript">
            $(function () {
            	$("span").attr("disabled", true);
            	 var date = new Date();
            	  date.setDate(date.getDate()-1);
                $('#datetimepicker1').datetimepicker({
                	minDate: date,
                	 format: 'MM/DD/YYYY HH:mm'
                }).attr("disabled","disabled");
                $('#datetimepicker2').datetimepicker({                	
                	 format: 'MM/DD/YYYY HH:mm'
                });
               
                });
            $(document).ready(function() {
            $('#date').submit(function(e){
            	e.preventDefault();
            var startdate= $("#date1").val();
            var enddate= $("#date2").val();
            startdate=new Date(startdate);
            enddate=new Date(enddate);
            
            /*********Finding Days between Two Date*************/
            var fromDate=moment(startdate,'DD/MM/YYYY');
            var toDate=moment(enddate,'DD/MM/YYYY');
            var daysDiff=toDate.diff(fromDate,'days');
           // alert(daysDiff);
            
            /************Finding Month***********/
            var startmonth=startdate.getMonth()+1;
            var endmonth=enddate.getMonth()+1;
      
            if(daysDiff==1 || daysDiff==0)
            {

                var diff=enddate-startdate;           
                var diffSeconds = diff/1000;
                var HH = Math.floor(diffSeconds/3600);
                var MM = Math.floor(diffSeconds%3600)/60;
                
                if(HH<4 && HH>=0)
                	{
                	alert("success");
                	document.getElementById("date").submit()
                	}
                else if(HH==4 && MM==0)
                	{
                	alert("success");                	
                	document.getElementById("date").submit()
                	}
                else if(HH<0)
                	{
                	alert("End time Should be higher than Start time");
                	$('#date2').val("");
                	}
                else              
                	{
                	
                   alert("Hour Limit should be 4 hours");
                   $('#date2').val("");
                	}
             
            }
            
            else if(daysDiff>1)
            	{
            	alert("Difference between Start Date and end date is more than one day");
            	$('#date2').val("");
            	}
            	
            else
            	{
                alert("End Date is less than start Date");	
                $('#date2').val("");
            	}
                    
            });
            });
        </script>
</head>
<body>
	<form id="date">
		<div align="center" class="container">
			<div id="start" class="row">
				<div class='col-sm-6'>
					<h4>Start Date And Time</h4>
					<div class="form-group">
						<div class='input-group date' id='datetimepicker1'>
							<input type='text' class="form-control" id="date1" /> <span
								class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
			</div>
			<div id="end" class="row">
				<div class='col-sm-6'>
					<h4>End Date And Time</h4>
					<div class="form-group">
						<div class='input-group date' id='datetimepicker2'>
							<input type='text' class="form-control" id="date2" /> <span
								class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
			</div>
		<button id="button" type="submit" class="btn btn-success">Connect</button>
		</div>
	</form>
</body>
</html>


