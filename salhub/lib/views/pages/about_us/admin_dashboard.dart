import 'package:flutter/material.dart';
import 'package:salhub/views/pages/easy_pie_chart/easy_pie_chart.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:easy_pie_chart/easy_pie_chart.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: const BackButtonWidget(),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            // Dashboard cards
            Row(
              children: [
                Expanded(
                  child: _buildDashboardCard(
                    title: 'Total App Members',
                    number: '2500',
                    color: const Color(0xFFC2EA7E),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _buildDashboardCard(
                    title: "Today's Active Learners",
                    number: '68',
                    color: const Color(0xFF75D0F5),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _buildDashboardCard(
                    title: 'New Users',
                    number: '45',
                    color: const Color(0xFFFA8A87),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFEE9),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'User Statistics',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Center(
                      child: MyEasyPieChart(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 25,
                      left: 20,
                      right: 20,
                    ),
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
            ),
          ],
        ),
      ),
    );
  }
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
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              number,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildLegend({
    required Color color,
    required String text,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),

        const SizedBox(width: 6),

        Text(
          text,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}