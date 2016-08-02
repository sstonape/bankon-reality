var app = angular.module('SynergyApp',['ngRoute', 'ui.bootstrap']);

app.config(['$routeProvider','$locationProvider', '$httpProvider', function($routeProvider,$locationProvider, $httpProvider){
	
	$locationProvider.html5Mode({
		enabled : true,
		requireBase : false
	});
	
	$routeProvider.when("/synergy/who-we-are",{
		templateUrl: "/synergy/resources/templates/synergy-who-we-are.html", 
	});
	$routeProvider.when("/synergy/vision",{
		templateUrl: "/synergy/resources/templates/synergy-vision.html", 
	});
	$routeProvider.when("/synergy/team",{
		templateUrl: "/synergy/resources/templates/synergy-team.html", 
	});
	$routeProvider.when("/synergy/data-processing",{
		templateUrl: "/synergy/resources/templates/synergy-data-processing.html", 
	});
	$routeProvider.when("/synergy/open-end-coding",{
		templateUrl: "/synergy/resources/templates/synergy-openEnd-coding.html", 
	});
	$routeProvider.when("/synergy/presentation",{
		templateUrl: "/synergy/resources/templates/synergy-presentation.html", 
	});
	$routeProvider.when("/synergy/stat-analysis",{
		templateUrl: "/synergy/resources/templates/synergy-stat-analysis.html", 
	});
	$routeProvider.when("/synergy/translation",{
		templateUrl: "/synergy/resources/templates/synergy-translation.html", 
	});
	$routeProvider.when("/synergy/data-entry",{
		templateUrl: "/synergy/resources/templates/synergy-data-entry.html", 
	});
	$routeProvider.when("/synergy/survey-programming",{
		templateUrl: "/synergy/resources/templates/synergy-survey-programming.html", 
	});
	$routeProvider.when("/synergy/contact-us",{
		templateUrl: "/synergy/resources/templates/synergy-contact-us.html", 
	});
	
	$routeProvider.when("/synergy/news",{
		templateUrl: "/synergy/resources/templates/synergy-news.html", 
	});
	
	$routeProvider.when("/synergy/home/market-research-companies-pune",{
		templateUrl: "/synergy/resources/templates/synergy-homepage.html", 
	});
	
	$routeProvider.when('/', {
		redirectTo: '/synergy/home/market-research-companies-pune',
    });
	
	$routeProvider.otherwise({redirectTo: '/'});
	
}]);

