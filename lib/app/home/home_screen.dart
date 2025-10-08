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
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
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
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
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
        border: !isMobile
            ? const Border(right: BorderSide(color: Colors.black, width: 1))
            : null, // no border on mobile
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
              ? SizedBox(height: 400, child: CustomTabView(isMobile: isMobile))
              : Expanded(child: CustomTabView(isMobile: isMobile)),
        ],
      ),
    );
  }

  //   Widget _buildMainContent({required bool isMobile}) {
  //     return Obx(() {
  //       final patient = controller.selectedPatient.value;

  //       if (isMobile) {
  //         return const SizedBox(); // no panel on mobile
  //       }

  //       return Container(
  //         height: double.infinity,
  //         width: double.infinity,
  //         color: Colors.grey.shade100,
  //         padding: const EdgeInsets.all(20),
  //         child: patient == null
  //             ? Center(
  //                 child: Text(
  //                   "Select a patient to see details",
  //                   style: const TextStyle(fontSize: 18),
  //                 ),
  //               )
  //             : Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   SingleChildScrollView(
  //                     scrollDirection: Axis.horizontal,
  //                     child: Row(
  //                       spacing: 10,
  //                       children: [
  //                         Container(
  //                           height: 35,
  //                           width: 100,
  //                           color: Colors.blue,
  //                           child: Center(
  //                             child: Text(
  //                               ' Video Call',
  //                               style: TextStyle(color: Colors.white),
  //                             ),
  //                           ),
  //                         ),

  //                         Container(
  //                           height: 35,
  //                           width: 100,
  //                           color: Colors.blue,
  //                           child: Center(
  //                             child: Text(
  //                               'Start Consult',
  //                               style: TextStyle(color: Colors.white),
  //                             ),
  //                           ),
  //                         ),
  //                         Container(
  //                           height: 35,
  //                           width: 100,
  //                           color: Colors.blue,
  //                           child: Center(
  //                             child: Text(
  //                               'Chat',
  //                               style: TextStyle(color: Colors.white),
  //                             ),
  //                           ),
  //                         ),
  //                         Container(
  //                           height: 35,
  //                           width: 100,
  //                           color: Colors.blue,
  //                           child: Center(
  //                             child: Text(
  //                               'Prescription',
  //                               style: TextStyle(color: Colors.white),
  //                             ),
  //                           ),
  //                         ),

  //                         Container(
  //                           height: 35,
  //                           width: 100,
  //                           color: Colors.blue,
  //                           child: Center(
  //                             child: Text(
  //                               'History',
  //                               style: TextStyle(color: Colors.white),
  //                             ),
  //                           ),
  //                         ),

  //                         Container(
  //                           height: 35,
  //                           width: 100,
  //                           color: Colors.blue,
  //                           child: Center(
  //                             child: Text(
  //                               'Reports',
  //                               style: TextStyle(color: Colors.white),
  //                             ),
  //                           ),
  //                         ),

  //                         Container(
  //                           height: 35,
  //                           width: 100,
  //                           color: Colors.blue,
  //                           child: Center(
  //                             child: Text(
  //                               'Add Bills',
  //                               style: TextStyle(color: Colors.white),
  //                             ),
  //                           ),
  //                         ),

  //                         Container(
  //                           height: 35,
  //                           width: 100,
  //                           color: Colors.blue,
  //                           child: Center(
  //                             child: Text(
  //                               'Payments',
  //                               style: TextStyle(color: Colors.white),
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),

  //                   SizedBox(height: 20),
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

  Widget _buildMainContent({required bool isMobile}) {
    final HomeController controller = Get.find<HomeController>();

    return Obx(() {
      final patient = controller.selectedPatient.value;

      if (isMobile) {
        return const SizedBox(); // no panel on mobile
      }

      return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade100,
        padding: const EdgeInsets.all(20),
        child: patient == null
            ? const Center(
                child: Text(
                  "Select a patient to see details",
                  style: TextStyle(fontSize: 18),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ====== ACTION TABS ======
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(controller.actions.length, (
                        index,
                      ) {
                        final isSelected =
                            controller.selectedActionIndex.value == index;

                        return GestureDetector(
                          onTap: () => controller.selectAction(index),
                          child: Container(
                            height: 35,
                            width: 110,
                            margin: const EdgeInsets.only(right: 10),
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
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ====== PATIENT INFO ======
                  Text(
                    patient['name'] ?? '',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    patient['genderAge'] ?? '',
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    patient['rm'] ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    patient['time'] ?? '',
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    patient['address'] ?? '',
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),

                  SizedBox(height: 40),

                  // Details container
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today's visit",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(height: 10),

                        Row(
                          spacing: 10,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.monitor_weight,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  '51 KG',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Icon(
                                  Icons.thermostat,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  '98 °F',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  '134 / Min',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Icon(
                                  Icons.explore,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  '28 / Min',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),

                        Divider(),
                        SizedBox(height: 10),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Vitals Trends",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Divider(),
                            SizedBox(height: 10),

                            Row(
                              spacing: 10,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 20,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      'Pulse (/min)',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                    SizedBox(width: 50),
                                    Text(
                                      '134',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                    SizedBox(width: 10),
                                    Container(
                                      height: 20,
                                      width: 3,
                                      color: Colors.grey,
                                    ),

                                    SizedBox(width: 10),

                                    Text(
                                      '124',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),

                            Divider(),
                            Row(
                              spacing: 10,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.offline_bolt,
                                      size: 20,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      'R Rate (/min)',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                    SizedBox(width: 50),
                                    Text(
                                      '28',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                    SizedBox(width: 10),
                                    Container(
                                      height: 20,
                                      width: 3,
                                      color: Colors.grey,
                                    ),

                                    SizedBox(width: 10),

                                    Text(
                                      '22',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      );
    });
  }
}
