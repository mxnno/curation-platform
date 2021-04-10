'use strict';

angular.module('oncokbApp')
    .controller('TestCtrl', ['$scope', 'dialogs', 'OncoKB', 'DatabaseConnector', '$timeout', '_', 'FindRegex',
        'mainUtils', 'loadFiles', '$rootScope', 'DTColumnDefBuilder', 'DTOptionsBuilder', 'FirebaseModel', '$q',
        function($scope, dialogs, OncoKB, DatabaseConnector, $timeout, _, FindRegex, mainUtils, loadFiles, $rootScope,
                 DTColumnDefBuilder, DTOptionsBuilder, FirebaseModel, $q) {
           

            $scope.create = function() {
                consolge.log("Btn");
                var promises = [];
                $scope.createdPatients = [];
                _.each($scope.newPatient.split(","), function (patientID) {
                    promises.push(createPatient(patientID.trim().toUpperCase()));
                });
                $q.all(promises).then(function() {});
            };


            $scope.create = create

            function create(){
                consolge.log("Test" ); 
            }

            function createPatient(patientID) {
                consolge.log("Test" + patientID);
                var deferred = $q.defer();
                //var patient = new FirebaseModel.Patient(patientID);
                firebase.database().ref('Patients/' + patientID).set(patientID)

                return deferred.promise;
            }
        }]);
