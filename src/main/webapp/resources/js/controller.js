app.controller('AppController', ['$rootScope','$scope', '$location','$timeout','$window', '$http', function($rootScope, $scope, $location, $timeout, $window, $http) {
	
	$(".loader").hide();
	
	$window.ga('send', 'pageview', { page: $location.url() });
	
	// to get current route
	$scope.$on("$locationChangeSuccess", function() {
        $scope.activeNav = $location.path();
    });
	
	// loads all countries from JSON file 
	$http.get('/bankonreality/resources/js/country_code.json').success(function (data) {
		$scope.countryCodes = data.countries;
	});
	
	$scope.activeHome = false;
	$scope.activeAboutUs = false;
	$scope.activeServices = false;
	$scope.activeNews = false;
	$scope.activeContactUs = false;
	
	$scope.synergy = [];
	
	if ( $location.path() == "/bankonreality/" || $location.path() == "/bankonreality/home/market-research-companies-pune") {
		$scope.activeHome = true;
	}
	if ( $location.path() == "/bankonreality/who-we-are" || $location.path() == "/bankonreality/vision" || $location.path() == "/bankonreality/team") {
		$scope.activeAboutUs = true;
	}
	if ( $location.path() == "/bankonreality/data-processing" || $location.path() == "/bankonreality/open-end-coding" || $location.path() == "/bankonreality/presentation" || $location.path() == "/bankonreality/stat-analysis" || $location.path() == "/bankonreality/data-entry" || $location.path() == "/bankonreality/survey-programming" ) {
		$scope.activeServices = true;
	}
	if ( $location.path() == "/bankonreality/news") {
		$scope.activeNews = true;
	}
	if ( $location.path() == "/bankonreality/contact-us") {
		$scope.activeContactUs = true;
	}
	
	$scope.getSlides = function() {
		$(".cycle-slideshow").cycle({
			timeout: 5000
		});
	};
	
	$scope.getDetails = function(synergy) {
		$(".loader").show();
		var contactNumber = synergy.countryCode.code + " - " + synergy.number;
		console.log(contactNumber);
		var dataObj = {
				name : synergy.name,
				email: synergy.email,
				contactNumber : contactNumber,
				description : synergy.message
		};
		var saveUserDetails = $http({
			method : "POST",
			url : "/synergy/saveUserDetails",
			data : dataObj,
			headers : {	'Content-Type' : 'application/json' }
		});
		saveUserDetails.success(function(data, status, headers, config) {
			$scope.synergy = [];
			$(".loader").hide();
			window.alert("Your response has been recorded. We will contact you soon.");
			$location.path("/");
		});
		saveUserDetails.error(function(error) {
			$(".loader").hide();
			console.log("Problem in saving details");
		});
		
	};
	
	$scope.onChangeCountry = function(code) {
	};
	
	$scope.getActiveFor = function(value) {
		if ( value == 1 ) {
			$scope.activeHome = true;
			$scope.activeAboutUs = false;
			$scope.activeServices = false;
			$scope.activeNews = false;
			$scope.activeContactUs = false;
		} else if ( value == 2 || value == 3 || value == 4 ) {
			$scope.activeAboutUs = true;
			$scope.activeHome = false;
			$scope.activeServices = false;
			$scope.activeNews = false;
			$scope.activeContactUs = false;
		} else if ( value == 5 || value == 6 || value == 7 || value == 8 || value == 9 ) {
			$scope.activeServices = true;
			$scope.activeHome = false;
			$scope.activeAboutUs = false;
			$scope.activeNews = false;
			$scope.activeContactUs = false;
		} else if ( value == 11 ) {
			$scope.activeNews = true;
			$scope.activeHome = false;
			$scope.activeAboutUs = false;
			$scope.activeServices = false;
			$scope.activeContactUs = false;
		} else if ( value == 12 ) {
			$scope.activeContactUs = true;
			$scope.activeHome = false;
			$scope.activeAboutUs = false;
			$scope.activeServices = false;
			$scope.activeNews = false;
		}
	};
	
	// show footer when page is loaded
	$scope.$on('$viewContentLoaded', function(event) {
		$(".clear").show();    
	});
	
}]);

