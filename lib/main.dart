// import 'package:doctor_app/utility/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_navigation/get_navigation.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Doctor App',
//       debugShowCheckedModeBanner: false,
//       initialRoute: AppRouter.splash,
//       getPages: AppRouter.routes,
//     );
//   }
// }

import 'dart:html' as html;
import 'package:doctor_app/utility/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());

  // ✅ Listen for OneSignal events (works only on web)
  html.window.onMessage.listen((event) {
    final data = event.data;
    if (data is Map && data['type'] == 'onesignal-user-id') {
      final userId = data['id'];
      debugPrint('🎯 OneSignal User ID: $userId');
      html.window.alert('Subscribed! OneSignal ID: $userId');
      // 👉 You can also store this ID or send it to your backend
    }
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Doctor App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.splash,
      getPages: AppRouter.routes,
    );
  }
}
