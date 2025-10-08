// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:doctor_app/app/home/home_contoller.dart';

// class PatientDetailScreen extends StatelessWidget {
//   final Map<String, dynamic> patient;

//   const PatientDetailScreen({super.key, required this.patient});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.find<HomeController>();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(patient['name']),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlue,
//       ),
//       body: Obx(() {
//         return SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ====== ACTION TABS (Now Wrapped) ======
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Wrap(
//                       spacing: 10,
//                       runSpacing: 10,
//                       children: List.generate(controller.actions.length, (
//                         index,
//                       ) {
//                         final isSelected =
//                             controller.selectedActionIndex.value == index;

//                         return GestureDetector(
//                           onTap: () => controller.selectAction(index),
//                           child: Container(
//                             height: 38,
//                             width: 110,
//                             decoration: BoxDecoration(
//                               color: isSelected ? Colors.blue : Colors.white,
//                               border: Border.all(
//                                 color: isSelected
//                                     ? Colors.blue
//                                     : Colors.grey.shade400,
//                               ),
//                               borderRadius: BorderRadius.circular(6),
//                               boxShadow: [
//                                 if (isSelected)
//                                   BoxShadow(
//                                     color: Colors.blue.withOpacity(0.2),
//                                     blurRadius: 4,
//                                     offset: const Offset(0, 2),
//                                   ),
//                               ],
//                             ),
//                             child: Center(
//                               child: Text(
//                                 controller.actions[index],
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   color: isSelected
//                                       ? Colors.white
//                                       : Colors.black87,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         );
//                       }),
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 20),

//               // ====== PATIENT DETAILS ======
//               Text(
//                 patient['name'],
//                 style: const TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 patient['genderAge'],
//                 style: const TextStyle(fontSize: 16, color: Colors.black54),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 patient['rm'],
//                 style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 patient['time'],
//                 style: const TextStyle(fontSize: 16, color: Colors.black87),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 patient['address'],
//                 style: const TextStyle(fontSize: 16, color: Colors.black87),
//               ),
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:doctor_app/app/home/home_contoller.dart';

// class PatientDetailScreen extends StatelessWidget {
//   final Map<String, dynamic> patient;

//   const PatientDetailScreen({super.key, required this.patient});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.find<HomeController>();
//     final double screenWidth = MediaQuery.of(context).size.width;

//     // Calculate button width so that 3 fit per row with spacing
//     final double buttonWidth = (screenWidth - (10 * 2) - 40) / 3;
//     // 10*2 = spacing between 3 buttons, 40 = total horizontal padding

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(patient['name']),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlue,
//       ),
//       body: Obx(() {
//         return SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ====== ACTION TABS (3 per row) ======
//               Wrap(
//                 spacing: 10,
//                 runSpacing: 10,
//                 children: List.generate(controller.actions.length, (index) {
//                   final isSelected =
//                       controller.selectedActionIndex.value == index;

//                   return GestureDetector(
//                     onTap: () => controller.selectAction(index),
//                     child: Container(
//                       width: buttonWidth,
//                       height: 42,
//                       decoration: BoxDecoration(
//                         color: isSelected ? Colors.blue : Colors.white,
//                         border: Border.all(
//                           color: isSelected
//                               ? Colors.blue
//                               : Colors.grey.shade400,
//                         ),
//                         borderRadius: BorderRadius.circular(6),
//                         boxShadow: [
//                           if (isSelected)
//                             BoxShadow(
//                               color: Colors.blue.withOpacity(0.2),
//                               blurRadius: 4,
//                               offset: const Offset(0, 2),
//                             ),
//                         ],
//                       ),
//                       child: Center(
//                         child: Text(
//                           controller.actions[index],
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: isSelected ? Colors.white : Colors.black87,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//               ),

//               const SizedBox(height: 20),

//               // ====== PATIENT DETAILS ======
//               Text(
//                 patient['name'],
//                 style: const TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 patient['genderAge'],
//                 style: const TextStyle(fontSize: 16, color: Colors.black54),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 patient['rm'],
//                 style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 patient['time'],
//                 style: const TextStyle(fontSize: 16, color: Colors.black87),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 patient['address'],
//                 style: const TextStyle(fontSize: 16, color: Colors.black87),
//               ),
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doctor_app/app/home/home_contoller.dart';

class PatientDetailScreen extends StatelessWidget {
  final Map<String, dynamic> patient;

  const PatientDetailScreen({super.key, required this.patient});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
    final double screenWidth = MediaQuery.of(context).size.width;

    // Calculate button width so that 3 fit per row with spacing
    final double buttonWidth = (screenWidth - (10 * 2) - 40) / 3;

    return Scaffold(
      appBar: AppBar(
        title: Text(patient['name']),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Obx(() {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ====== ACTION TABS (3 per row) ======
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(controller.actions.length, (index) {
                  final isSelected =
                      controller.selectedActionIndex.value == index;

                  return GestureDetector(
                    onTap: () => controller.selectAction(index),
                    child: Container(
                      width: buttonWidth,
                      height: 42,
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.blue : Colors.white,
                        border: Border.all(
                          color: isSelected
                              ? Colors.blue
                              : Colors.grey.shade400,
                        ),
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          if (isSelected)
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.2),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          controller.actions[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 20),

              // ====== PATIENT BASIC INFO ======
              Text(
                patient['name'],
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                patient['genderAge'],
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 10),
              Text(
                patient['rm'],
                style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
              ),
              const SizedBox(height: 10),
              Text(
                patient['time'],
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 10),
              Text(
                patient['address'],
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),

              const SizedBox(height: 20),

              // ====== TODAY'S VISIT & VITALS ======
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today's Visit",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),

                    // ====== VITALS ROW ======
                    Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      children: [
                        _vitalItem(Icons.monitor_weight, '51 KG'),
                        _vitalItem(Icons.thermostat, '98 °F'),
                        _vitalItem(Icons.favorite, '134 / Min'),
                        _vitalItem(Icons.explore, '28 / Min'),
                      ],
                    ),

                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),

                    // ====== VITALS TRENDS ======
                    Text(
                      "Vitals Trends",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),

                    // Pulse
                    _trendRow(Icons.favorite, 'Pulse (/min)', '134', '124'),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),

                    // Respiration Rate
                    _trendRow(Icons.offline_bolt, 'R Rate (/min)', '28', '22'),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  // ===== Helper Widgets =====
  Widget _vitalItem(IconData icon, String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 20, color: Colors.blue),
        const SizedBox(width: 6),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _trendRow(
    IconData icon,
    String label,
    String current,
    String previous,
  ) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.blue),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(width: 50),
        Text(
          current,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(width: 10),
        Container(height: 20, width: 3, color: Colors.grey),
        const SizedBox(width: 10),
        Text(
          previous,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
