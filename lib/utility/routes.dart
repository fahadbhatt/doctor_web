import 'package:doctor_app/app/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRouter {
  static const String home = '/home';

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => HomeScreen(),
      transition: Transition.size,
      transitionDuration: Durations.medium3,
    ),
  ];
}
