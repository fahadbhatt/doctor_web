// import 'package:get/get.dart';

// class HomeController extends GetxController {
//   // Currently selected patient
//   Rx<Map<String, dynamic>?> selectedPatient = Rx<Map<String, dynamic>?>(null);

//   // Currently selected action/tab for patient details
//   RxInt selectedActionIndex = 0.obs;

//   // List of actions/tabs
//   final List<String> actions = [
//     'Video Call',
//     'Audio Call',
//     'Chat',
//     'Prescription',
//     'History',
//     'Reports',
//   ];

//   // Select a patient
//   void selectPatient(Map<String, dynamic>? patient, {bool isMobile = false}) {
//     selectedPatient.value = patient;
//     selectedActionIndex.value = 0;

//     if (isMobile && patient != null) {
//       // Navigate to patient detail page on mobile
//       Get.toNamed('/patientDetails', arguments: patient);
//     }
//   }

//   // Select an action/tab
//   void selectAction(int index) {
//     selectedActionIndex.value = index;
//   }
// }

import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<Map<String, dynamic>?> selectedPatient = Rx<Map<String, dynamic>?>(null);
  RxInt selectedActionIndex = 0.obs;

  final List<String> actions = [
    'Details',
    'Video Call',
    'Chat',
    'Prescription',
    'History',
    'Reports',
    'Add Bills',
    'Payments',
  ];

  void selectPatient(Map<String, dynamic>? patient, {bool isMobile = false}) {
    selectedPatient.value = patient;
    selectedActionIndex.value = 0;
    if (isMobile && patient != null) {
      Get.toNamed('/patientDetails', arguments: patient);
    }
  }

  void selectAction(int index) {
    selectedActionIndex.value = index;
  }
}
