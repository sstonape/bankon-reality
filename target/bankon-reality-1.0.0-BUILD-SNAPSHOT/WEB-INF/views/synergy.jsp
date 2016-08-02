<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html nowrap="true" id="ng-app" ng-app="SynergyApp" ng-controller="AppController">
<head>
<title>Synergy Market Research</title>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/resources/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/x-icon">
</head>
<body id="top" class="bgded fixed" style="">
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <nav id="mainav" class="clear">
      <ul class="clear">
        <li ng-class="{ active : activeHome }"><a href="/synergy/home/market-research-companies-pune" ng-click="getActiveFor('1')">Home</a></li>
        <li ng-class="{ active : activeAboutUs }"><a class="drop" href="#">About Us</a>
          <ul>
            <li><a href="/synergy/who-we-are" ng-click="getActiveFor('2')">Who We Are</a></li>
            <li><a href="/synergy/vision" ng-click="getActiveFor('3')">Vision</a></li>
            <li><a href="/synergy/team" ng-click="getActiveFor('4')">Team</a></li>
          </ul>
        </li>
        <li ng-class="{ active : activeServices }"><a class="drop" href="#">Services</a>
          <ul>
            <li><a href="/synergy/data-processing" ng-click="getActiveFor('5')">Data Processing</a></li>
            <li><a href="/synergy/open-end-coding" ng-click="getActiveFor('6')">Open End Coding</a></li>
            <li><a href="/synergy/presentation" ng-click="getActiveFor('7')">Presentation & Report Writing</a></li>
            <li><a href="/synergy/stat-analysis" ng-click="getActiveFor('8')">Statistical Analysis</a></li>
            <li><a href="/synergy/data-entry" ng-click="getActiveFor('9')">Data Entry</a></li>
            <li><a href="/synergy/survey-programming" ng-click="getActiveFor('10')">Survey Programming</a></li>
          </ul>
        </li>
        <!-- <li><a class="drop" href="#">Dropdown</a>
          <ul>
            <li><a href="#">Level 2</a></li>
            <li><a class="drop" href="#">Level 2 + Drop</a>
              <ul>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
              </ul>
            </li>
          </ul>
        </li> -->
        <li ng-class="{ active : activeNews }"><a href="/synergy/news" ng-click="getActiveFor('11')">News</a></li>
        <li ng-class="{ active : activeContactUs }"><a href="/synergy/contact-us" ng-click="getActiveFor('12')">Contact Us</a></li>
      </ul>
    </nav>
    <div id="logo" class="logoClass">
      <a href="/synergy" ng-click="getActiveFor('1')"><h1><img src="${pageContext.request.contextPath}/resources/images/demo/backgrounds/synergyLogo.png" alt=""></h1></a>
      <p align="center" class="logoPunch">A Marketing Research & Analytical Solutions</p>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>

<ng-view></ng-view>

<div class="wrapper row5">
  <div id="copyright" class="clear" style="display: none;"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; <script>document.write(new Date().getFullYear())</script> - All Rights Reserved - <a href="#">Synergy Market Research</a>
    	<a href="/synergy/contact-us"> | Contact</a>
    	<%-- <ul class="socialMedia">
				<li><a href="" target="_blank" class="iconT-gmail"><img src="${pageContext.request.contextPath}/resources/images/demo/backgrounds/gmail.png" alt=""></a></li>
				<li><a href="" target="_blank" class="iconT-facebook"><img src="${pageContext.request.contextPath}/resources/images/demo/backgrounds/facebook.png" alt=""></a></li>
				<li><a href="" target="_blank" class="iconT-twitter"><img src="${pageContext.request.contextPath}/resources/images/demo/backgrounds/twitter.png" alt=""></a></li>
				<li><a href="" target="_blank" class="iconT-linkedin"><img src="${pageContext.request.contextPath}/resources/images/demo/backgrounds/linkedin.png" alt=""></a></li>
		</ul> --%>
    	<div class="socialMedia">
	    	<a href="https://business.google.com/u/0/b/112722763096726359378/dashboard/l/04762489479231708809?_ga=1.201965396.451946132.1444410843" target="_blank" class="iconT-gmail"><img src="${pageContext.request.contextPath}/resources/images/demo/backgrounds/gmail.png" alt=""></a>
	    	<a href="https://web.facebook.com/Synergy-Market-Research-1470906323216568/?ref=bookmarks" target="_blank" class="iconT-facebook"><img src="${pageContext.request.contextPath}/resources/images/demo/backgrounds/facebook.png" alt=""></a>
	    	<a href="" target="_blank" class="iconT-twitter"><img src="${pageContext.request.contextPath}/resources/images/demo/backgrounds/twitter.png" alt=""></a>
	    	<a href="https://www.linkedin.com/company/synergy-market-research?trk=top_nav_home" target="_blank" class="iconT-linkedin"><img src="${pageContext.request.contextPath}/resources/images/demo/backgrounds/linkedin.png" alt=""></a>
    	</div>
    </p>
  </div>
</div>

<!-- JAVASCRIPTS --> 
<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery.cycle2.js"></script> 
<%-- <script src="${pageContext.request.contextPath}/resources/js/vendor/sss.min.js"></script> --%>
<script src="${pageContext.request.contextPath}/resources/js/lib/angular/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/lib/angular/angular-route.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/lib/angular/ui-bootstrap-tpls-0.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/controller.js"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-70660324-1', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>