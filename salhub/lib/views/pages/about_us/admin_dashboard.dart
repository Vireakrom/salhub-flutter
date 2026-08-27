import 'package:flutter/material.dart';
import 'package:salhub/data/notfiers.dart';
import 'package:salhub/views/pages/easy_pie_chart/easy_pie_chart.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            // 1. DASHBOARD CARDS
            FutureBuilder(
              future: authService.value.fetchTotalUsers(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                final int totalUser = snapshot.data!;
                return Row(
                  children: [
                    Expanded(
                      child: _buildDashboardCard(
                        title: 'Total App Members',
                        number: '$totalUser',
                        color: const Color(0xFFC2EA7E),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildDashboardCard(
                        title: "Today's Active Learners",
                        number: '3',
                        color: const Color(0xFF75D0F5),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: _buildDashboardCard(
                        title: 'New Users',
                        number: '1',
                        color: const Color(0xFFFA8A87),
                      ),
                    ),
                  ],
                );
              },
            ),

            const SizedBox(height: 30),

            // 2. PIE CHART
            _buildPieChartSection(),

            const SizedBox(height: 30),

            // 3. BAR CHART
            _buildBarChartSection(),

            const SizedBox(height: 30),

            // 4. NEW USER LIST
            // _buildNewUserTable(),

            // const SizedBox(height: 20),

            // 5. RECENT ACTIVITY
            _buildRecentActivitySection(),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  // =========================================================
  // 1. DASHBOARD CARD
  // =========================================================

  Widget _buildDashboardCard({
    required String title,
    required String number,
    required Color color,
  }) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),

            const SizedBox(height: 5),

            Text(
              number,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  // =========================================================
  // 2. PIE CHART SECTION
  // =========================================================

  Widget _buildPieChartSection() {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFEE9),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),

          const Text(
            'User Statistics',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Expanded(child: Center(child: MyEasyPieChart())),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.only(bottom: 25, left: 20, right: 20),
            child: Wrap(
              spacing: 20,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                _buildLegend(
                  color: const Color(0xFFC2EA7E),
                  text: 'Total Members: 2500',
                ),

                _buildLegend(
                  color: const Color(0xFF75D0F5),
                  text: 'Active Learners: 68',
                ),

                _buildLegend(
                  color: const Color(0xFFFA8A87),
                  text: 'New Users: 45',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // 3. BAR CHART SECTION
  // =========================================================

  Widget _buildBarChartSection() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 280,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFEE9),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.black12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Monthly Progress For Top Lessons',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),

                const SizedBox(height: 30),

                Container(
                  padding: const EdgeInsets.only(bottom: 4),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 101, 100, 100),
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildBar(height: 120, color: const Color(0xFFFA8A87)),
                      _buildBar(height: 160, color: const Color(0xFF75D0F5)),
                      _buildBar(height: 90, color: const Color(0xFFC2EA7E)),
                      _buildBar(height: 90, color: const Color(0xFFE97ECA)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // =========================================================
  // BAR
  // =========================================================

  Widget _buildBar({required double height, required Color color}) {
    return Container(
      width: 25,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }

  // =========================================================
  // 4. NEW USER TABLE
  // =========================================================

  // Widget _buildNewUserTable() {
  //   return Center(
  //     child: Container(
  //       width: double.infinity,
  //       height: 280,
  //       padding: const EdgeInsets.all(16.0),
  //       decoration: BoxDecoration(
  //         color: const Color(0xFFF8F4D8),
  //         borderRadius: BorderRadius.circular(24),
  //         border: Border.all(color: Colors.black12, width: 1),
  //       ),
  //       child: Column(
  //         children: [
  //           const Text(
  //             'New User Lists',
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.black87,
  //             ),
  //           ),

  //           const SizedBox(height: 12),

  //           Expanded(
  //             child: Center(
  //               child: SingleChildScrollView(
  //                 scrollDirection: Axis.horizontal,
  //                 child: DataTable(
  //                   columnSpacing: 60,

  //                   headingRowColor: WidgetStateProperty.all(
  //                     const Color(0xFF8B6B58),
  //                   ),

  //                   headingTextStyle: const TextStyle(
  //                     color: Colors.white,
  //                     fontWeight: FontWeight.bold,
  //                   ),

  //                   columns: const [
  //                     DataColumn(label: Text('User ID')),
  //                     DataColumn(label: Text('Name')),
  //                     DataColumn(label: Text('Gender')),
  //                     DataColumn(label: Text('Age')),
  //                     DataColumn(label: Text('Reg.Date')),
  //                   ],

  //                   rows: const [
  //                     DataRow(
  //                       cells: [
  //                         DataCell(Text('002501')),
  //                         DataCell(Text('Reachny')),
  //                         DataCell(Text('Female')),
  //                         DataCell(Text('8')),
  //                         DataCell(Text('29.07.2026')),
  //                       ],
  //                     ),

  //                     DataRow(
  //                       cells: [
  //                         DataCell(Text('002502')),
  //                         DataCell(Text('Raksmey')),
  //                         DataCell(Text('Male')),
  //                         DataCell(Text('9')),
  //                         DataCell(Text('29.07.2026')),
  //                       ],
  //                     ),

  //                     DataRow(
  //                       cells: [
  //                         DataCell(Text('002503')),
  //                         DataCell(Text('Malish')),
  //                         DataCell(Text('Female')),
  //                         DataCell(Text('11')),
  //                         DataCell(Text('29.07.2026')),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // =========================================================
  // 5. RECENT ACTIVITY SECTION
  // =========================================================

  Widget _buildRecentActivitySection() {
    final activities = [
      {
        'time': '10:15am',
        'user': 'Sokha',
        'action': 'completed Lesson 3',
        'target': 'Intro to Vowels',
      },
      {
        'time': '9:45am',
        'user': 'Dara',
        'action': 'purchased',
        'target': 'Pro Plan',
      },
      {'time': '9:30am', 'user': 'Bora', 'action': 'registered', 'target': ''},
      {
        'time': '8:00am',
        'user': 'New lesson',
        'action': 'published',
        'target': 'Numbers 1-10',
      },
    ];

    return Center(
      child: Container(
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: const Color(0xFFFFFEE9),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.black12),
        ),

        child: Column(
          children: [
            const Text(
              'Recent Activity',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: Center(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: activities.length,

                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 8);
                  },

                  itemBuilder: (context, index) {
                    final activity = activities[index];

                    return _buildActivityRow(
                      time: activity['time']!,
                      user: activity['user']!,
                      action: activity['action']!,
                      target: activity['target']!,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityRow({
    required String time,
    required String user,
    required String action,
    required String target,
  }) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '[$time]',
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),

          const SizedBox(width: 5),

          Flexible(
            child: Text(
              target.isEmpty ? '$user $action.' : '$user $action $target.',
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLegend({required Color color, required String text}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),

        const SizedBox(width: 6),

        Text(text, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}
