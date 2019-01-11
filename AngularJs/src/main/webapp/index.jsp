<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
 <script type="text/javascript">
  var app = angular.module('myapp', []);
  app.controller('myappcontroller', function($scope, $http) {
  $scope.emp = []
  $scope.empform = {
  name : "",
  id : ""
   };
  function getUserDetails() {
	  $http({
	    method : 'GET',
	    url : 'empdetails'
	   }).then(function successCallback(response) {
	   $scope.emp = response.data;
	   }, function errorCallback(response) {
	    console.log(response.statusText);
	   });
	  }
  $scope.processUser = function() 
  {
    $http({
    method : 'POST',
    url : 'add',
    data : angular.toJson($scope.empform),
    headers : {
    'Content-Type' : 'application/json'
    }
    }).then(getUserDetails(),clearForm())
      .success(function(data){
        $scope.emp= data
      });
  }
  $scope.deleteUser = function(empl) {
	   $http({
	     method : 'DELETE',
	     url : 'deleteuser',
	     data : angular.toJson(empl),
	     headers : {
	     'Content-Type' : 'application/json'
	   }
	   }).then( getUserDetails());
	  }
  function clearForm() {
	    $scope.empform.name = "";
	    $scope.empform.id = "";
	  };
  });
</script>
<title></title>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body ng-app="myapp" ng-controller="myappcontroller">
<h2>Fill Employee Details</h2>
<form>
 <div class="table-responsive">
      <table class="table table-bordered" style="width: 600px">
        <tr>
          <td>Name</td>
          <td><input type="text" id="name" ng-model="empform.name"/></td>
        </tr>
        <tr>
          <td>id</td>
          <td><input type="number" id="id" ng-model="empform.id"/></td>
       </tr>
       <tr>
          <td colspan="2"><input type="submit"
            class="btn btn-primary btn-sm" ng-click="processUser()"
            value="submit" /></td>
       </tr>
     </table>
   </div>
</form>
<h3>Employees</h3>
   <div class="table-responsive">
     <table class="table table-bordered" style="width: 600px">
       <tr>
         <th>Name</th>
         <th>ID</th>
      </tr>
      <tr ng-repeat="empl in emp">
        <td>{{ empl.name}}</td>
        <td>{{ empl.id }}</td>
         <td><a ng-click="deleteUser(empl)" class="btn btn-primary btn-sm">Delete</a>
        </tr>
        </table></div>
</body>
</html>