<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html data-ng-app="plunker" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script src="https://code.angularjs.org/1.2.18/angular.js"></script>
    <script src="https://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.6.0.js"></script>
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
<title>Insert title here</title>
<style>
body{
padding:40px;

}
</style>
<script>
angular.module('plunker', ['ui.bootstrap']);
var ModalDemoCtrl = function ($scope, $modal,$http) {
    $scope.user = {
        email: '',
        password: null,
    };
    $scope.open = function () {
        $modal.open({
            templateUrl: 'myModalContent', // loads the template
            backdrop: true, // setting backdrop allows us to close the modal window on clicking outside the modal window
            windowClass: 'modal', // windowClass - additional CSS class(es) to be added to a modal window template
            controller: function ($scope, $modalInstance, user) {
                $scope.user = user;
                $scope.user.email = "";
                $scope.user.password = "";
                $scope.cancel = function () {
                    $modalInstance.dismiss('cancel'); 
                };
                $scope.submit = function () {
                    $modalInstance.dismiss('ok'); 
                  
                };
            },
            resolve: {
                user: function () {
                    return $scope.user;
                }
            }
        });//end of modal.open
    }; // end of scope.open function
};
</script>
</head>
 <body>
<div data-ng-controller="ModalDemoCtrl">
    <script type="text/ng-template" id="myModalContent">
     <div class="modal-header">
            <h3>I'm a modal!</h3>
        </div>
        <form name="myform" ng-submit="submit()">
          <div class="modal-body">
            <label>Email address:</label>
            <input type="email" ng-model="user.email" required/>
            <label>Password</label>
            <input type="password" ng-model="user.password" required/>
          </div>
          <div class="modal-footer">
              <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
              <input type="submit" class="btn primary-btn" value="Submit" />
          </div>
        </form>
    </script>
    <button class="btn" data-ng-click="open()">Open Modal</button>
</div>
    
 </body>

</html>