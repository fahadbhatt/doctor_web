import 'package:doctor_app/app/home/home_screen.dart';
import 'package:doctor_app/app/home/patient_detail_screen.dart';
import 'package:doctor_app/app/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRouter {
  static const String home = '/home';
  static const String patientDetails = '/patientDetails';
  static const String splash = '/splash';

  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => SplashScreen(),
      transition: Transition.zoom,
      transitionDuration: Durations.medium3,
    ),
    GetPage(
      name: home,
      page: () => HomeScreen(),
      transition: Transition.zoom,
      transitionDuration: Durations.medium3,
    ),
    GetPage(
      name: patientDetails,
      page: () {
        final args = Get.arguments as Map<String, dynamic>;
        return PatientDetailScreen(patient: args);
      },
    ),
  ];
}
