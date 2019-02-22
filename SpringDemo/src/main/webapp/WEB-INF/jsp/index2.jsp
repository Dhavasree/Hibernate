<!DOCTYPE html>    
<!-- define angular app -->    
<html ng-app="RoutingApp">    
<head>    
    <!-- CSS Files -->    
    <link rel="stylesheet" href="../css/bootstrap.min.css" />    
    <link rel="stylesheet" href="../css/font-awesome.css" />    
    
    <!-- SPELLS -->    
    <script src="../Scripts/angular.min.js"></script>    
    <script src="../Scripts/angular-route.min.js"></script>    
    <script src="/js/PageRouting.js"></script>    
</head>    
    
<body ng-controller="mainController">    
    
    <nav class="navbar navbar-default">    
        <div class="container">    
            <div class="navbar-header">    
                <a class="navbar-brand" href="/">    
                    Angular Routing Example    
                </a>    
            </div>    
    
            <ul class="nav navbar-nav navbar-right">    
                <li><a href="#"><i class="fa fa-home"></i>Home</a></li>    
                <li><a href="#about"><i class="fa fa-shield"></i>About</a></li>    
                <li><a href="#contact"><i class="fa fa-comment"></i>Contact</a></li>    
            </ul>    
        </div>    
    </nav>    
    
    <div id="main">    
        <!-- angular templating : This is where content will be injected -->    
        <div ng-view></div>    
    </div>    
</body>    
    
</html>   