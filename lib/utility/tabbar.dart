// import 'package:flutter/material.dart';

// class CustomTabBar extends StatefulWidget {
//   const CustomTabBar({super.key});

//   @override
//   State<CustomTabBar> createState() => _CustomTabBarState();
// }

// class _CustomTabBarState extends State<CustomTabBar> {
//   int selectedIndex = 0;

//   final List<String> tabs = ['Queue (05)', 'Seen (40)', 'Cancelled (0)'];

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: List.generate(
//           tabs.length,
//           (index) => GestureDetector(
//             onTap: () {
//               setState(() => selectedIndex = index);
//             },
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//               decoration: BoxDecoration(
//                 border: Border(
//                   bottom: BorderSide(
//                     color: selectedIndex == index
//                         ? Colors.blue
//                         : Colors.transparent,
//                     width: 2,
//                   ),
//                 ),
//               ),
//               child: Text(
//                 tabs[index],
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: selectedIndex == index ? Colors.blue : Colors.black,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class CustomTabView extends StatefulWidget {
//   const CustomTabView({super.key});

//   @override
//   State<CustomTabView> createState() => _CustomTabViewState();
// }

// class _CustomTabViewState extends State<CustomTabView> {
//   int selectedIndex = 0;

//   final List<String> tabs = ['Queue (05)', 'Seen (40)', 'Cancelled (0)'];

//   // Example data for each tab (Map to include details)
//   final List<List<Map<String, dynamic>>> tabData = [
//     [
//       {
//         'name': 'Patient A',
//         'genderAge': 'M, 25 yrs',
//         'rm': 'RM123',
//         'time': '10:00 AM',
//         'isHighlighted': true,
//       },
//       {
//         'name': 'Patient B',
//         'genderAge': 'F, 30 yrs',
//         'rm': 'RM124',
//         'time': '10:30 AM',
//         'isHighlighted': false,
//       },
//       {
//         'name': 'Patient C',
//         'genderAge': 'M, 40 yrs',
//         'rm': 'RM125',
//         'time': '11:00 AM',
//         'isHighlighted': false,
//       },
//     ],
//     [
//       {
//         'name': 'Patient X',
//         'genderAge': 'F, 28 yrs',
//         'rm': 'RM200',
//         'time': '09:00 AM',
//         'isHighlighted': false,
//       },
//       {
//         'name': 'Patient Y',
//         'genderAge': 'M, 35 yrs',
//         'rm': 'RM201',
//         'time': '09:30 AM',
//         'isHighlighted': false,
//       },
//     ],
//     [
//       {
//         'name': 'No cancelled appointments yet',
//         'genderAge': '',
//         'rm': '',
//         'time': '',
//         'isHighlighted': false,
//       },
//     ],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // ===== TAB BAR =====
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: List.generate(
//               tabs.length,
//               (index) => GestureDetector(
//                 onTap: () {
//                   setState(() => selectedIndex = index);
//                 },
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 8,
//                     horizontal: 5,
//                   ),
//                   decoration: BoxDecoration(
//                     border: Border(
//                       bottom: BorderSide(
//                         color: selectedIndex == index
//                             ? Colors.blue
//                             : Colors.transparent,
//                         width: 2,
//                       ),
//                     ),
//                   ),
//                   child: Text(
//                     tabs[index],
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: selectedIndex == index
//                           ? Colors.blue
//                           : Colors.black87,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),

//         const SizedBox(height: 5),

//         // ===== TAB CONTENT =====
//         Expanded(
//           child: tabData[selectedIndex].isEmpty
//               ? Center(
//                   child: Text(
//                     'No Data',
//                     style: const TextStyle(color: Colors.grey),
//                   ),
//                 )
//               : ListView.builder(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 10,
//                     vertical: 5,
//                   ),
//                   itemCount: tabData[selectedIndex].length,
//                   itemBuilder: (context, i) {
//                     final item = tabData[selectedIndex][i];
//                     return Container(
//                       margin: const EdgeInsets.only(bottom: 10),
//                       padding: const EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         color: item['isHighlighted'] == true
//                             ? Colors.blue.withOpacity(0.08)
//                             : Colors.white,
//                         borderRadius: BorderRadius.circular(6),
//                         border: Border.all(
//                           color: item['isHighlighted'] == true
//                               ? Colors.blue
//                               : Colors.grey.shade300,
//                         ),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           // LEFT CONTENT
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   item['name'],
//                                   overflow: TextOverflow.ellipsis,
//                                   style: const TextStyle(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 if (item['genderAge'] != '')
//                                   Padding(
//                                     padding: const EdgeInsets.only(top: 4),
//                                     child: Text(
//                                       item['genderAge'],
//                                       style: const TextStyle(
//                                         color: Colors.black54,
//                                         fontSize: 13,
//                                       ),
//                                     ),
//                                   ),
//                                 if (item['rm'] != '')
//                                   Text(
//                                     item['rm'],
//                                     style: const TextStyle(
//                                       color: Colors.blueGrey,
//                                       fontSize: 13,
//                                     ),
//                                   ),
//                               ],
//                             ),
//                           ),

//                           // RIGHT CONTENT
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               if (item['time'] != '')
//                                 Text(
//                                   item['time'],
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 13,
//                                     color: item['isHighlighted'] == true
//                                         ? Colors.blue
//                                         : Colors.black87,
//                                   ),
//                                 ),
//                               if (item['time'] != '')
//                                 const Icon(Icons.more_vert, color: Colors.grey),
//                             ],
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:doctor_app/app/home/home_contoller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CustomTabView extends StatefulWidget {
//   const CustomTabView({super.key});

//   @override
//   State<CustomTabView> createState() => _CustomTabViewState();
// }

// class _CustomTabViewState extends State<CustomTabView> {
//   final HomeController controller = Get.put(HomeController());
//   int selectedIndex = 0;

//   final List<String> tabs = ['Queue (05)', 'Seen (40)', 'Cancelled (0)'];

//   final List<List<Map<String, dynamic>>> tabData = [
//     [
//       {
//         'name': 'Patient A',
//         'genderAge': 'M, 25 yrs',
//         'rm': 'RM123',
//         'time': '10:00 AM',
//         'isHighlighted': true,
//         'address':
//             'Fs Auto Loan And Insurance, 2nd Floor Quied Complex, Above Gaytri Sweet Mart, Panpur Patiya, Himmatnagar',
//       },
//       {
//         'name': 'Patient B',
//         'genderAge': 'F, 30 yrs',
//         'rm': 'RM124',
//         'time': '10:30 AM',
//         'isHighlighted': false,
//         'address':
//             'Fs Auto Loan And Insurance, 2nd Floor Quied Complex, Above Gaytri Sweet Mart, Panpur Patiya, Himmatnagar',
//       },
//       {
//         'name': 'Patient C',
//         'genderAge': 'M, 40 yrs',
//         'rm': 'RM125',
//         'time': '11:00 AM',
//         'isHighlighted': false,
//         'address':
//             'Fs Auto Loan And Insurance, 2nd Floor Quied Complex, Above Gaytri Sweet Mart, Panpur Patiya, Himmatnagar',
//       },
//     ],
//     [
//       {
//         'name': 'Patient X',
//         'genderAge': 'F, 28 yrs',
//         'rm': 'RM200',
//         'time': '09:00 AM',
//         'isHighlighted': false,
//         'address': '',
//       },
//       {
//         'name': 'Patient Y',
//         'genderAge': 'M, 35 yrs',
//         'rm': 'RM201',
//         'time': '09:30 AM',
//         'isHighlighted': false,
//         'address': '',
//       },
//     ],
//     [
//       {
//         'name': 'No cancelled appointments yet',
//         'genderAge': '',
//         'rm': '',
//         'time': '',
//         'isHighlighted': false,
//         'address': '',
//       },
//     ],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     bool isMobile = MediaQuery.of(context).size.width < 700;

//     return Column(
//       children: [
//         // ===== TAB BAR =====
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: List.generate(
//               tabs.length,
//               (index) => GestureDetector(
//                 onTap: () {
//                   setState(() => selectedIndex = index);
//                   controller.selectPatient(
//                     null,
//                   ); // Reset selection on tab change
//                 },
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 8,
//                     horizontal: 5,
//                   ),
//                   decoration: BoxDecoration(
//                     border: Border(
//                       bottom: BorderSide(
//                         color: selectedIndex == index
//                             ? Colors.blue
//                             : Colors.transparent,
//                         width: 2,
//                       ),
//                     ),
//                   ),
//                   child: Text(
//                     tabs[index],
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: selectedIndex == index
//                           ? Colors.blue
//                           : Colors.black87,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),

//         const SizedBox(height: 5),

//         // ===== TAB CONTENT =====
//         Expanded(
//           child: tabData[selectedIndex].isEmpty
//               ? const Center(
//                   child: Text('No Data', style: TextStyle(color: Colors.grey)),
//                 )
//               : ListView.builder(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 10,
//                     vertical: 5,
//                   ),
//                   itemCount: tabData[selectedIndex].length,
//                   itemBuilder: (context, i) {
//                     final item = tabData[selectedIndex][i];
//                     bool isSelectable =
//                         item['name'] == 'Patient A' ||
//                         item['name'] == 'Patient B';

//                     return GestureDetector(
//                       onTap: isSelectable
//                           ? () => controller.selectPatient(item)
//                           : null,
//                       child: Container(
//                         margin: const EdgeInsets.only(bottom: 10),
//                         padding: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           color: controller.selectedPatient.value == item
//                               ? Colors.blue.withOpacity(0.08)
//                               : Colors.white,
//                           borderRadius: BorderRadius.circular(6),
//                           border: Border.all(
//                             color: controller.selectedPatient.value == item
//                                 ? Colors.blue
//                                 : Colors.grey.shade300,
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             // LEFT CONTENT
//                             Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     item['name'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: const TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   if (item['genderAge'] != '')
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 4),
//                                       child: Text(
//                                         item['genderAge'],
//                                         style: const TextStyle(
//                                           color: Colors.black54,
//                                           fontSize: 13,
//                                         ),
//                                       ),
//                                     ),
//                                   if (item['rm'] != '')
//                                     Text(
//                                       item['rm'],
//                                       style: const TextStyle(
//                                         color: Colors.blueGrey,
//                                         fontSize: 13,
//                                       ),
//                                     ),
//                                 ],
//                               ),
//                             ),

//                             // RIGHT CONTENT
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 if (item['time'] != '')
//                                   Text(
//                                     item['time'],
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 13,
//                                       color:
//                                           controller.selectedPatient.value ==
//                                               item
//                                           ? Colors.blue
//                                           : Colors.black87,
//                                     ),
//                                   ),
//                                 if (item['time'] != '')
//                                   const Icon(
//                                     Icons.more_vert,
//                                     color: Colors.grey,
//                                   ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:doctor_app/app/home/home_contoller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CustomTabView extends StatelessWidget {
//   CustomTabView({super.key});

//   final HomeController controller = Get.find<HomeController>();

//   final List<String> tabs = ['Queue (05)', 'Seen (40)', 'Cancelled (0)'];

//   final List<List<Map<String, dynamic>>> tabData = [
//     [
//       {
//         'name': 'Patient A',
//         'genderAge': 'M, 25 yrs',
//         'rm': 'RM123',
//         'time': '10:00 AM',
//         'address':
//             'Fs Auto Loan And Insurance, 2nd Floor Quied Complex, Above Gaytri Sweet Mart, Panpur Patiya, Himmatnagar',
//       },
//       {
//         'name': 'Patient B',
//         'genderAge': 'F, 30 yrs',
//         'rm': 'RM124',
//         'time': '10:30 AM',
//         'address':
//             'Fs Auto Loan And Insurance, 2nd Floor Quied Complex, Above Gaytri Sweet Mart, Panpur Patiya, Himmatnagar',
//       },
//       {
//         'name': 'Patient C',
//         'genderAge': 'M, 40 yrs',
//         'rm': 'RM125',
//         'time': '11:00 AM',
//         'address':
//             'Fs Auto Loan And Insurance, 2nd Floor Quied Complex, Above Gaytri Sweet Mart, Panpur Patiya, Himmatnagar',
//       },
//     ],
//     [
//       {
//         'name': 'Patient X',
//         'genderAge': 'F, 28 yrs',
//         'rm': 'RM200',
//         'time': '09:00 AM',
//         'address': '',
//       },
//       {
//         'name': 'Patient Y',
//         'genderAge': 'M, 35 yrs',
//         'rm': 'RM201',
//         'time': '09:30 AM',
//         'address': '',
//       },
//     ],
//     [
//       {
//         'name': 'No cancelled appointments yet',
//         'genderAge': '',
//         'rm': '',
//         'time': '',
//         'address': '',
//       },
//     ],
//   ];

//   final RxInt selectedTabIndex = 0.obs;

//   @override
//   Widget build(BuildContext context) {
//     bool isMobile = MediaQuery.of(context).size.width < 700;

//     return Column(
//       children: [
//         // ===== TAB BAR =====
//         Obx(
//           () => Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                 tabs.length,
//                 (index) => GestureDetector(
//                   onTap: () {
//                     selectedTabIndex.value = index;
//                     controller.selectPatient(null);
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 8,
//                       horizontal: 5,
//                     ),
//                     decoration: BoxDecoration(
//                       border: Border(
//                         bottom: BorderSide(
//                           color: selectedTabIndex.value == index
//                               ? Colors.blue
//                               : Colors.transparent,
//                           width: 2,
//                         ),
//                       ),
//                     ),
//                     child: Text(
//                       tabs[index],
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: selectedTabIndex.value == index
//                             ? Colors.blue
//                             : Colors.black87,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 5),

//         // ===== TAB CONTENT =====
//         Expanded(
//           child: Obx(() {
//             final currentData = tabData[selectedTabIndex.value];

//             if (currentData.isEmpty) {
//               return const Center(
//                 child: Text('No Data', style: TextStyle(color: Colors.grey)),
//               );
//             }

//             return ListView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               itemCount: currentData.length,
//               itemBuilder: (context, i) {
//                 final item = currentData[i];
//                 final isSelected = controller.selectedPatient.value == item;

//                 return GestureDetector(
//                   onTap: () => controller.selectPatient(item),
//                   child: Container(
//                     margin: const EdgeInsets.only(bottom: 10),
//                     padding: const EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       color: isSelected
//                           ? Colors.lightBlue.shade50
//                           : Colors.white,
//                       borderRadius: BorderRadius.circular(6),
//                       border: Border.all(
//                         color: isSelected ? Colors.blue : Colors.grey.shade300,
//                       ),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         // LEFT CONTENT
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 item['name'],
//                                 overflow: TextOverflow.ellipsis,
//                                 style: const TextStyle(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               if (item['genderAge'] != '')
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 4),
//                                   child: Text(
//                                     item['genderAge'],
//                                     style: const TextStyle(
//                                       color: Colors.black54,
//                                       fontSize: 13,
//                                     ),
//                                   ),
//                                 ),
//                               if (item['rm'] != '')
//                                 Text(
//                                   item['rm'],
//                                   style: const TextStyle(
//                                     color: Colors.blueGrey,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                             ],
//                           ),
//                         ),

//                         // RIGHT CONTENT
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             if (item['time'] != '')
//                               Text(
//                                 item['time'],
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 13,
//                                   color: isSelected
//                                       ? Colors.blue
//                                       : Colors.black87,
//                                 ),
//                               ),
//                             if (item['time'] != '')
//                               const Icon(Icons.more_vert, color: Colors.grey),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );
//           }),
//         ),
//       ],
//     );
//   }
// }

import 'package:doctor_app/app/home/home_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTabView extends StatelessWidget {
  CustomTabView({super.key});

  final HomeController controller = Get.find<HomeController>();

  final List<String> tabs = ['Queue (05)', 'Seen (40)', 'Cancelled (0)'];

  final List<List<Map<String, dynamic>>> tabData = [
    [
      {
        'name': 'Babo Miteshkumar',
        'genderAge': 'M, 25 yrs',
        'rm': 'RM123',
        'time': '10:00 AM',
        'address':
            'Fs Auto Loan And Insurance, 2nd Floor Quied Complex, Above Gaytri Sweet Mart, Panpur Patiya, Himmatnagar',
      },
      {
        'name': 'Mo jilani Mukdiwala',
        'genderAge': 'F, 30 yrs',
        'rm': 'RM124',
        'time': '10:30 AM',
        'address':
            'Fs Auto Loan And Insurance, 2nd Floor Quied Complex, Above Gaytri Sweet Mart, Panpur Patiya, Himmatnagar',
      },
      {
        'name': 'Rabari Manusigh',
        'genderAge': 'M, 40 yrs',
        'rm': 'RM125',
        'time': '11:00 AM',
        'address':
            'Fs Auto Loan And Insurance, 2nd Floor Quied Complex, Above Gaytri Sweet Mart, Panpur Patiya, Himmatnagar',
      },
    ],
    [
      {
        'name': 'Patient X',
        'genderAge': 'F, 28 yrs',
        'rm': 'RM200',
        'time': '09:00 AM',
        'address': '',
      },
      {
        'name': 'Patient Y',
        'genderAge': 'M, 35 yrs',
        'rm': 'RM201',
        'time': '09:30 AM',
        'address': '',
      },
    ],
    [
      {
        'name': 'No cancelled appointments yet',
        'genderAge': '',
        'rm': '',
        'time': '',
        'address': '',
      },
    ],
  ];

  final RxInt selectedTabIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ===== TAB BAR =====
        Obx(
          () => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                tabs.length,
                (index) => GestureDetector(
                  onTap: () {
                    selectedTabIndex.value = index;
                    controller.selectPatient(null);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 5,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: selectedTabIndex.value == index
                              ? Colors.blue
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Text(
                      tabs[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: selectedTabIndex.value == index
                            ? Colors.blue
                            : Colors.black87,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 5),

        // ===== TAB CONTENT =====
        Expanded(
          child: Obx(() {
            final currentData = tabData[selectedTabIndex.value];

            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              itemCount: currentData.length,
              itemBuilder: (context, i) {
                final item = currentData[i];

                return Obx(() {
                  final isSelected = controller.selectedPatient.value == item;

                  return GestureDetector(
                    onTap: () => controller.selectPatient(item),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Colors.lightBlue.shade50
                            : Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: isSelected
                              ? Colors.blue
                              : Colors.grey.shade300,
                          width: isSelected ? 2 : 1,
                        ),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: const Offset(0, 2),
                                ),
                              ]
                            : [],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // LEFT CONTENT
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['name'],
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                if (item['genderAge'] != '')
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Text(
                                      item['genderAge'],
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                if (item['rm'] != '')
                                  Text(
                                    item['rm'],
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 13,
                                    ),
                                  ),
                              ],
                            ),
                          ),

                          // RIGHT CONTENT
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              if (item['time'] != '')
                                Text(
                                  item['time'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: isSelected
                                        ? Colors.blue
                                        : Colors.black87,
                                  ),
                                ),
                              if (item['time'] != '')
                                const Icon(Icons.more_vert, color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                });
              },
            );
          }),
        ),
      ],
    );
  }
}
