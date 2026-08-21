import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // This row replaces your old green box to display the 3 metric cards horizontally
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                // 1. Total App Members (Green Card)
                Expanded(
                  child: _buildMetricCard(
                    title: 'Total App Members',
                    value: '2500',
                    color: const Color(0xFFC2EA7E), // Soft Green from image
                    icon: Icons.person_outline,
                  ),
                ),
                const SizedBox(width: 12), // Space between cards

                // 2. Today's Active Learners (Blue Card)
                Expanded(
                  child: _buildMetricCard(
                    title: "Today's Active Learners",
                    value: '68',
                    color: const Color(0xFF75D0F5), // Soft Blue from image
                    icon: Icons.person_outline,
                  ),
                ),
                const SizedBox(width: 12), // Space between cards

                // 3. New Users This Month (Red/Pink Card)
                Expanded(
                  child: _buildMetricCard(
                    title: 'New Users (This Month)',
                    value: '45',
                    color: const Color(0xFFFA8A87), // Soft Red from image
                    icon: Icons.person_outline,
                  ),
                ),
              ],
            ),
          ),
          
          // --- Your original flex code remains here ---
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pink,
              child: const Center(child: Text('Flex: 1')),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              child: const Center(child: Text('Flex: 2')),
            ),
          ),
        ],
      ),
    );
  }
  // Helper builder function to create the clean rounded metric cards
  Widget _buildMetricCard({
    required String title,
    required String value,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      height: 149, // Matched to your 313x149 image layout specs
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20), // Smooth rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12), // Shadow beneath cards
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Top line: Card Title + User Icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(icon, color: Colors.black54, size: 20),
            ],
          ),
          
          // Big bold number value in the center
          Text(
            value,
            style: const TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 2), // Empty spacer bottom balance padding
        ],
      ),
    );
  }
}