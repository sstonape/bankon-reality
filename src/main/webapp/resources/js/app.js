var app = angular.module('SynergyApp',['ngRoute', 'ui.bootstrap']);

app.config(['$routeProvider','$locationProvider', '$httpProvider', function($routeProvider,$locationProvider, $httpProvider){
	
	$locationProvider.html5Mode({
		enabled : true,
		requireBase : false
	});
	
	$routeProvider.when("/bankonreality/who-we-are",{
		templateUrl: "/bankonreality/resources/templates/synergy-who-we-are.html", 
	});
	$routeProvider.when("/bankonreality/vision",{
		templateUrl: "/bankonreality/resources/templates/synergy-vision.html", 
	});
	$routeProvider.when("/bankonreality/team",{
		templateUrl: "/bankonreality/resources/templates/synergy-team.html", 
	});
	$routeProvider.when("/bankonreality/data-processing",{
		templateUrl: "/bankonreality/resources/templates/synergy-data-processing.html", 
	});
	$routeProvider.when("/bankonreality/open-end-coding",{
		templateUrl: "/bankonreality/resources/templates/synergy-openEnd-coding.html", 
	});
	$routeProvider.when("/bankonreality/presentation",{
		templateUrl: "/bankonreality/resources/templates/synergy-presentation.html", 
	});
	$routeProvider.when("/bankonreality/stat-analysis",{
		templateUrl: "/bankonreality/resources/templates/synergy-stat-analysis.html", 
	});
	$routeProvider.when("/bankonreality/translation",{
		templateUrl: "/bankonreality/resources/templates/synergy-translation.html", 
	});
	$routeProvider.when("/bankonreality/data-entry",{
		templateUrl: "/bankonreality/resources/templates/synergy-data-entry.html", 
	});
	$routeProvider.when("/bankonreality/survey-programming",{
		templateUrl: "/bankonreality/resources/templates/synergy-survey-programming.html", 
	});
	$routeProvider.when("/bankonreality/contact-us",{
		templateUrl: "/bankonreality/resources/templates/synergy-contact-us.html", 
	});
	
	$routeProvider.when("/bankonreality/news",{
		templateUrl: "/bankonreality/resources/templates/synergy-news.html", 
	});
	
	$routeProvider.when("/bankonreality/home/market-research-companies-pune",{
		templateUrl: "/bankonreality/resources/templates/synergy-homepage.html", 
	});
	
	$routeProvider.when('/', {
		redirectTo: '/bankonreality/home/market-research-companies-pune',
    });
	
	$routeProvider.otherwise({redirectTo: '/'});
	
}]);

