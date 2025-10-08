// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // ======= APP BAR =======
//           Container(
//             height: 100,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
//             ),
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               children: [
//                 Image.asset(
//                   'assets/images/profile_icon.png',
//                   height: 70,
//                   width: 70,
//                 ),
//                 const SizedBox(width: 10),
//                 const Text(
//                   'Dr. Rahiyan Memon Clinic',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                 ),
//                 const SizedBox(width: 20),
//                 Container(
//                   height: 30,
//                   padding: const EdgeInsets.symmetric(horizontal: 10),
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       'App Tour',
//                       style: TextStyle(color: Colors.white, fontSize: 14),
//                     ),
//                   ),
//                 ),
//                 // const Spacer(),
//                 const SizedBox(width: 20),
//                 const Icon(Icons.settings, color: Colors.blueAccent, size: 30),
//                 const SizedBox(width: 41),
//                 Container(
//                   height: 100,
//                   decoration: BoxDecoration(
//                     border: Border(left: BorderSide(width: 1)),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // ======= BODY =======
//           Expanded(
//             child: Row(
//               children: [
//                 // LEFT PANEL
//                 Container(
//                   width: 500,
//                   decoration: const BoxDecoration(
//                     border: Border(
//                       right: BorderSide(color: Colors.black, width: 1),
//                     ),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // ===== Search Bar =====
//                       SizedBox(
//                         height: 100,
//                         width: double.infinity,
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 10,
//                             vertical: 0,
//                           ),
//                           child: Row(
//                             children: [
//                               // Expanded gives TextField width to fill available space
//                               Expanded(
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                     hintText: 'Search',
//                                     prefixIcon: const Icon(Icons.search),
//                                     contentPadding: const EdgeInsets.symmetric(
//                                       vertical: 10,
//                                     ),
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(8),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 12),
//                               const Icon(Icons.person_add_alt_1, size: 40),
//                             ],
//                           ),
//                         ),
//                       ),

//                       // Calender
//                       Container(
//                         padding: EdgeInsets.only(left: 10, right: 10),
//                         width: double.infinity,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             IconButton(
//                               icon: const Icon(Icons.arrow_back_ios),
//                               onPressed: () {
//                                 // Handle back button press
//                               },
//                             ),
//                             const Text(
//                               '6 August 2023',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Icon(Icons.date_range),
//                             Icon(Icons.refresh),
//                             IconButton(
//                               icon: const Icon(Icons.arrow_forward_ios),
//                               onPressed: () {
//                                 // Handle forward button press
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 20),

//                       // Tab bar
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10, right: 10),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Queue (05)',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               'Seen (40)',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               'Cancelled (0)',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 // MAIN CONTENT
//                 Expanded(
//                   child: Container(
//                     color: Colors.grey.shade100,
//                     child: const Center(
//                       child: Text(
//                         "Main Content Area",
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:doctor_app/app/home/home_contoller.dart';
// import 'package:doctor_app/utility/tabbar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});

//   final HomeController controller = Get.put(HomeController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           final bool isMobile = constraints.maxWidth < 700;

//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ===== APP BAR =====
//               Container(
//                 height: 80,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   border: Border(
//                     bottom: BorderSide(color: Colors.black, width: 1),
//                   ),
//                 ),
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 10,
//                 ),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       'assets/images/profile_icon.png',
//                       height: 50,
//                       width: 50,
//                     ),
//                     const SizedBox(width: 10),
//                     Expanded(
//                       child: Text(
//                         'Dr. Rahiyan Memon Clinic',
//                         style: TextStyle(
//                           fontSize: isMobile ? 14 : 18,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     const SizedBox(width: 20),
//                     if (!isMobile)
//                       Container(
//                         height: 30,
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             'App Tour',
//                             style: TextStyle(color: Colors.white, fontSize: 14),
//                           ),
//                         ),
//                       ),
//                     const SizedBox(width: 20),
//                     const Icon(
//                       Icons.settings,
//                       color: Colors.blueAccent,
//                       size: 28,
//                     ),
//                   ],
//                 ),
//               ),

//               // ===== BODY =====
//               Expanded(
//                 child: isMobile
//                     ? SingleChildScrollView(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             _buildLeftPanel(isMobile: isMobile),
//                             _buildMainContent(isMobile: isMobile),
//                           ],
//                         ),
//                       )
//                     : Row(
//                         children: [
//                           _buildLeftPanel(isMobile: isMobile),
//                           Expanded(
//                             child: _buildMainContent(isMobile: isMobile),
//                           ),
//                         ],
//                       ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildLeftPanel({required bool isMobile}) {
//     return Container(
//       width: isMobile ? double.infinity : 400,
//       decoration: BoxDecoration(
//         border: isMobile
//             ? const Border(bottom: BorderSide(color: Colors.black, width: 1))
//             : const Border(right: BorderSide(color: Colors.black, width: 1)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Search Bar
//           Container(
//             height: 80,
//             padding: const EdgeInsets.symmetric(horizontal: 12),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Search',
//                       prefixIcon: const Icon(Icons.search),
//                       contentPadding: const EdgeInsets.symmetric(vertical: 10),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 const Icon(Icons.person_add_alt_1, size: 32),
//               ],
//             ),
//           ),

//           // Calendar Header
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.arrow_back_ios, size: 18),
//                   onPressed: () {},
//                 ),
//                 const Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       '6 Oct 2025',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Icon(Icons.date_range, size: 20, color: Colors.grey),
//                     SizedBox(width: 8),
//                     Icon(Icons.refresh, size: 20, color: Colors.grey),
//                   ],
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.arrow_forward_ios, size: 18),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 15),

//           // Tabs
//           isMobile
//               ? SizedBox(height: 400, child: CustomTabView())
//               : Expanded(child: CustomTabView()),
//         ],
//       ),
//     );
//   }

//   Widget _buildMainContent({required bool isMobile}) {
//     return Obx(() {
//       final patient = controller.selectedPatient.value;

//       return Container(
//         height: isMobile ? null : double.infinity,
//         width: double.infinity,
//         color: Colors.grey.shade100,
//         padding: const EdgeInsets.all(20),
//         child: patient == null
//             ? Center(
//                 child: Text(
//                   isMobile
//                       ? "Mobile View - Left Panel Above\nMain Content Below"
//                       : "Desktop View - Select a patient to see details",
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(fontSize: 18),
//                 ),
//               )
//             : Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     patient['name'],
//                     style: const TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     patient['genderAge'],
//                     style: const TextStyle(fontSize: 16, color: Colors.black54),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     patient['rm'],
//                     style: const TextStyle(
//                       fontSize: 16,
//                       color: Colors.blueGrey,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     patient['time'],
//                     style: const TextStyle(fontSize: 16, color: Colors.black87),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     patient['address'],
//                     style: const TextStyle(fontSize: 16, color: Colors.black87),
//                   ),
//                 ],
//               ),
//       );
//     });
//   }
// }

// import 'package:doctor_app/app/home/home_contoller.dart';
// import 'package:doctor_app/utility/tabbar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});

//   final HomeController controller = Get.put(HomeController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           final bool isMobile = constraints.maxWidth < 700;

//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ===== APP BAR =====
//               Container(
//                 height: 80,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   border: Border(
//                     bottom: BorderSide(color: Colors.black, width: 1),
//                   ),
//                 ),
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 10,
//                 ),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       'assets/images/profile_icon.png',
//                       height: 50,
//                       width: 50,
//                     ),
//                     const SizedBox(width: 10),
//                     Expanded(
//                       child: Text(
//                         'Dr. Rahiyan Memon Clinic',
//                         style: TextStyle(
//                           fontSize: isMobile ? 14 : 18,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     const SizedBox(width: 20),
//                     if (!isMobile)
//                       Container(
//                         height: 30,
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             'App Tour',
//                             style: TextStyle(color: Colors.white, fontSize: 14),
//                           ),
//                         ),
//                       ),
//                     const SizedBox(width: 20),
//                     const Icon(
//                       Icons.settings,
//                       color: Colors.blueAccent,
//                       size: 28,
//                     ),
//                   ],
//                 ),
//               ),

//               // ===== BODY =====
//               Expanded(
//                 child: isMobile
//                     ? SingleChildScrollView(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             _buildLeftPanel(isMobile: isMobile),
//                             _buildMainContent(isMobile: isMobile),
//                           ],
//                         ),
//                       )
//                     : Row(
//                         children: [
//                           _buildLeftPanel(isMobile: isMobile),
//                           Expanded(
//                             child: _buildMainContent(isMobile: isMobile),
//                           ),
//                         ],
//                       ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildLeftPanel({required bool isMobile}) {
//     return Container(
//       width: isMobile ? double.infinity : 400,
//       decoration: BoxDecoration(
//         border: isMobile
//             ? const Border(bottom: BorderSide(color: Colors.black, width: 1))
//             : const Border(right: BorderSide(color: Colors.black, width: 1)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Search Bar
//           Container(
//             height: 80,
//             padding: const EdgeInsets.symmetric(horizontal: 12),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Search',
//                       prefixIcon: const Icon(Icons.search),
//                       contentPadding: const EdgeInsets.symmetric(vertical: 10),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 const Icon(Icons.person_add_alt_1, size: 32),
//               ],
//             ),
//           ),

//           // Calendar Header
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.arrow_back_ios, size: 18),
//                   onPressed: () {},
//                 ),
//                 const Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       '6 Oct 2025',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Icon(Icons.date_range, size: 20, color: Colors.grey),
//                     SizedBox(width: 8),
//                     Icon(Icons.refresh, size: 20, color: Colors.grey),
//                   ],
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.arrow_forward_ios, size: 18),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 15),

//           // Tabs
//           isMobile
//               ? SizedBox(height: 400, child: CustomTabView())
//               : Expanded(child: CustomTabView()),
//         ],
//       ),
//     );
//   }

//   Widget _buildMainContent({required bool isMobile}) {
//     return Obx(() {
//       final patient = controller.selectedPatient.value;

//       return Container(
//         height: isMobile ? null : double.infinity,
//         width: double.infinity,
//         color: Colors.grey.shade100,
//         padding: const EdgeInsets.all(20),
//         child: patient == null
//             ? Center(
//                 child: Text(
//                   isMobile
//                       ? "Mobile View - Left Panel Above\nMain Content Below"
//                       : "Desktop View - Select a patient to see details",
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(fontSize: 18),
//                 ),
//               )
//             : Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     patient['name'],
//                     style: const TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     patient['genderAge'],
//                     style: const TextStyle(fontSize: 16, color: Colors.black54),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     patient['rm'],
//                     style: const TextStyle(
//                       fontSize: 16,
//                       color: Colors.blueGrey,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     patient['time'],
//                     style: const TextStyle(fontSize: 16, color: Colors.black87),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     patient['address'],
//                     style: const TextStyle(fontSize: 16, color: Colors.black87),
//                   ),
//                 ],
//               ),
//       );
//     });
//   }
// }

import 'package:doctor_app/app/home/home_contoller.dart';
import 'package:doctor_app/utility/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final bool isMobile = constraints.maxWidth < 700;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== APP BAR =====
              Container(
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/profile_icon.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Dr. Rahiyan Memon Clinic',
                        style: TextStyle(
                          fontSize: isMobile ? 14 : 18,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 20),
                    if (!isMobile)
                      Container(
                        height: 30,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                          child: Text(
                            'App Tour',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.settings,
                      color: Colors.blueAccent,
                      size: 28,
                    ),
                  ],
                ),
              ),

              // ===== BODY =====
              Expanded(
                child: isMobile
                    ? SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildLeftPanel(isMobile: isMobile),
                            _buildMainContent(isMobile: isMobile),
                          ],
                        ),
                      )
                    : Row(
                        children: [
                          _buildLeftPanel(isMobile: isMobile),
                          Expanded(
                            child: _buildMainContent(isMobile: isMobile),
                          ),
                        ],
                      ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildLeftPanel({required bool isMobile}) {
    return Container(
      width: isMobile ? double.infinity : 400,
      decoration: BoxDecoration(
        border: isMobile
            ? const Border(bottom: BorderSide(color: Colors.black, width: 1))
            : const Border(right: BorderSide(color: Colors.black, width: 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.person_add_alt_1, size: 32),
              ],
            ),
          ),

          // Calendar Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, size: 18),
                  onPressed: () {},
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '6 Oct 2025',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.date_range, size: 20, color: Colors.grey),
                    SizedBox(width: 8),
                    Icon(Icons.refresh, size: 20, color: Colors.grey),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, size: 18),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),

          // Tabs
          isMobile
              ? SizedBox(height: 400, child: CustomTabView())
              : Expanded(child: CustomTabView()),
        ],
      ),
    );
  }

  Widget _buildMainContent({required bool isMobile}) {
    return Obx(() {
      final patient = controller.selectedPatient.value;

      return Container(
        height: isMobile ? null : double.infinity,
        width: double.infinity,
        color: Colors.grey.shade100,
        padding: const EdgeInsets.all(20),
        child: patient == null
            ? Center(
                child: Text(
                  isMobile
                      ? "Mobile View - Left Panel Above\nMain Content Below"
                      : "Desktop View - Select a patient to see details",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    patient['name'],
                    style: const TextStyle(
                      fontSize: 20,
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
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                    ),
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
                ],
              ),
      );
    });
  }
}
