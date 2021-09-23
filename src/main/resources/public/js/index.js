angular.module("index",[])
           .controller("AppCtrl", function ($scope, $http) {
               $scope.langForm = {languageCountry:"EN"};

               $scope.sendForm = function(langForm){
                   $http({
                       method: "POST",
                       url: "/api/index",
                       data: $.param(langForm),
                       headers: { "Content-Type" : "application/x-www-form-urlencoded" }
                   });
               }
           });