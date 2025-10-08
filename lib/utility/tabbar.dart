import 'package:doctor_app/app/home/home_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTabView extends StatelessWidget {
  final bool isMobile;
  CustomTabView({super.key, required this.isMobile});

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
      {
        'name': 'Patel Ketan',
        'genderAge': 'M, 29 yrs',
        'rm': 'RM126',
        'time': '11:30 AM',
        'address': 'Near Bus Stand, Vijapur Road, Himmatnagar',
      },
      {
        'name': 'Shah Priya',
        'genderAge': 'F, 24 yrs',
        'rm': 'RM127',
        'time': '12:00 PM',
        'address': 'Sunshine Apartment, D-Mart Road, Himmatnagar',
      },
      {
        'name': 'Rana Bhavesh',
        'genderAge': 'M, 33 yrs',
        'rm': 'RM128',
        'time': '12:30 PM',
        'address': 'Opp. City Garden, Main Road, Himmatnagar',
      },
      {
        'name': 'Joshi Meena',
        'genderAge': 'F, 41 yrs',
        'rm': 'RM129',
        'time': '01:00 PM',
        'address': 'Behind SBI Bank, Market Area, Himmatnagar',
      },
      {
        'name': 'Chauhan Amit',
        'genderAge': 'M, 36 yrs',
        'rm': 'RM130',
        'time': '01:30 PM',
        'address': 'GIDC Colony, Himmatnagar',
      },
      {
        'name': 'Prajapati Nita',
        'genderAge': 'F, 27 yrs',
        'rm': 'RM131',
        'time': '02:00 PM',
        'address': 'Opp. Police Station, Civil Road, Himmatnagar',
      },
      {
        'name': 'Solanki Deep',
        'genderAge': 'M, 38 yrs',
        'rm': 'RM132',
        'time': '02:30 PM',
        'address': 'Bungalow No.12, Green Park Society, Himmatnagar',
      },
      {
        'name': 'Raval Sneha',
        'genderAge': 'F, 31 yrs',
        'rm': 'RM133',
        'time': '03:00 PM',
        'address': 'Shree Nagar Society, Station Road, Himmatnagar',
      },
      {
        'name': 'Desai Raj',
        'genderAge': 'M, 45 yrs',
        'rm': 'RM134',
        'time': '03:30 PM',
        'address': 'Ganesh Heights, Near Highway, Himmatnagar',
      },
      {
        'name': 'Thakor Heena',
        'genderAge': 'F, 26 yrs',
        'rm': 'RM135',
        'time': '04:00 PM',
        'address': 'RTO Circle, Opp. Petrol Pump, Himmatnagar',
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
        // TAB BAR
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
                    controller.selectPatient(null, isMobile: isMobile);
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

        // TAB CONTENT
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
                    onTap: () =>
                        controller.selectPatient(item, isMobile: isMobile),
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
