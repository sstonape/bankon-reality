angular.module('drftRequest', ['lodash'])
  .config(['$httpProvider', function($httpProvider) {
	  $httpProvider.defaults.cache = false;
	  $httpProvider.defaults.headers.get = $httpProvider.defaults.headers.get || {};
	    
	  // disable IE ajax request caching
	  _.extend($httpProvider.defaults.headers.get, {
		  'If-Modified-Since': '0',
		  'Cache-Control': 'no-cache, no-store, must-revalidate',
		  'Pragma': 'no-cache',
		  'Timestamp': _.now(),
		  'Expires': 0
	  });
  }])
  .service('request', ['$http', '$q', '_',
    function($http, $q, _) {

      var _request = function() {
        var deferred = $q.defer();
        if(this.param.method === 'post' && !angular.isDefined(this.param.data)) {
          deferred.reject("defined method post require data");
        }

        var success = function(data) {
          deferred.resolve(data);
        };

        var error = function(error) {
          deferred.reject(error);
        };

        var params = _.extend({
          handleAs: "json",
          cache: false
        }, this.param);

        $http(params).success(success).error(error);
        return deferred.promise;
      };

      var _doGet = function(url, data) {
    	this.param = {
          params: data,
          url: url,
          method: "get",
          headers: {'Timestamp' : _.now(), 'Cache-Control':'no-cache, no-store, must-revalidate', 'Pragma':'no-cache', 'Expires':0}
        };
        return _request.call(this);
      };

      var _doPost = function(url, data, encodeType) {
        this.param = {
          data: data,
          url: url,
          method: "post",
          headers: {'Content-Type': encodeType || 'application/x-www-form-urlencoded'}
        };
        return _request.call(this);
      };
      
      var _doUpload = function(url, data) {
        this.param = {
          data: data,
          url: url,
          method: "post",
          transformRequest: angular.identity,
          headers: {'Content-Type': undefined}
        };
        return _request.call(this);
      };

      /*
       * Need to specify encode type if other than application/x-www-form-urlencoded
       */
      this.save = function(url, data, encodeType) {
        return _doPost(url, data, encodeType);
      };

      this.fetch = function(url, data) {
        return _doGet(url, data);
      };

      this.upload = function(url, data) {
        return _doUpload(url, data);
      };
    }
  ]);
