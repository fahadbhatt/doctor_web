// // import 'package:get/get.dart';

// // class HomeContoller extends GetxController {}
// import 'package:get/get.dart';

// class HomeController extends GetxController {
//   // Use Rxn (Reactive Nullable) to hold the selected patient data.
//   // It is initialized to null, meaning no patient is selected initially.
//   var selectedPatient = Rxn<Map<String, dynamic>>();

//   // Method to update the selected patient state
//   void selectPatient(Map<String, dynamic>? patientData) {
//     selectedPatient.value = patientData;
//   }
// }

// import 'package:get/get.dart';

// class HomeController extends GetxController {
//   // Currently selected patient
//   var selectedPatient = Rxn<Map<String, dynamic>>();

//   void selectPatient(Map<String, dynamic>? patientData) {
//     selectedPatient.value = patientData;
//   }
// }

// import 'package:get/get.dart';

// class HomeController extends GetxController {
//   // Currently selected patient
//   var selectedPatient = Rxn<Map<String, dynamic>>();

//   // Method to select a patient
//   void selectPatient(Map<String, dynamic>? patientData) {
//     selectedPatient.value = patientData;
//   }
// }

import 'package:get/get.dart';

class HomeController extends GetxController {
  // Currently selected patient
  var selectedPatient = Rxn<Map<String, dynamic>>();

  // Method to select a patient
  void selectPatient(Map<String, dynamic>? patientData) {
    selectedPatient.value = patientData;
  }
}
