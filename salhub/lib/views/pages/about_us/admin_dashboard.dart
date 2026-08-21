import 'package:flutter/material.dart';
import 'package:salhub/views/pages/about_us/admin_contents_page.dart'; 
import 'package:salhub/views/pages/easy_pie_chart/easy_pie_chart.dart'; 

class AdminDashboard extends StatelessWidget { 
  const AdminDashboard({super.key}); 

  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      // ===================================================== 
      // APP BAR 
      // ===================================================== 
      appBar: AppBar( 
        automaticallyImplyLeading: false, 
        centerTitle: true, 
        // Replace BackButtonWidget with Menu Icon Button
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ), 

      // ===================================================== 
      // SIDEBAR / DRAWER
      // ===================================================== 
      drawer: _buildCustomSidebar(context),

      // ===================================================== 
      // BODY 
      // ===================================================== 
      body: SingleChildScrollView( 
        padding: const EdgeInsets.all(30), 
        child: Column( 
          children: [ 
            // 1. DASHBOARD CARDS 
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

            // 2. PIE CHART 
            _buildPieChartSection(), 

            const SizedBox(height: 30), 

            // 3. BAR CHART 
            _buildBarChartSection(), 

            const SizedBox(height: 30), 

            // 4. NEW USER LIST 
            _buildNewUserTable(), 

            const SizedBox(height: 20), 

            // 5. RECENT ACTIVITY 
            _buildRecentActivitySection(), 
          ], 
        ), 
      ), 
    ); 
  } 

  // ========================================================= 
  // CUSTOM SIDEBAR WIDGET
  // ========================================================= 
  Widget _buildCustomSidebar(BuildContext context) {
    return Drawer(
      width: 220,
      backgroundColor: const Color(0xFFFFFDE7), // Cream background from reference image
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(30), // Rounded right edges from screenshot
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            
            // Header Mascot / Logo
            // Replace with Image.asset('assets/squirrel.png') if using an asset
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/images/background_logo.png', // Path to your image file
              fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 30),

            // Navigation Items
            _buildSidebarItem(
              icon: Icons.home_outlined,
              label: 'DashBoard',
              isSelected: true,
              onTap: () => Navigator.pop(context),
            ),
            _buildSidebarItem(
              icon: Icons.assignment_outlined,
              label: 'Contents',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => const AdminContentsPage(), // Replace with your target Page widget
                  ),
                  );
            },
            ),
            _buildSidebarItem(
              icon: Icons.person_outline,
              label: 'Users',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => const Placeholder(), // Replace with your target Page widget
                  ),
                  );
              },
            ),
            _buildSidebarItem(
              icon: Icons.settings_outlined,
              label: 'System',
              onTap: () {
                Navigator.pop(context);
                 Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => const Placeholder(), // Replace with your target Page widget
                  ),
                  );
              },
            ),
            _buildSidebarItem(
              icon: Icons.logout_outlined,
              label: 'Logout',
              onTap: () {
                Navigator.pop(context);
                 Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => const Placeholder(), // Replace with your target Page widget
                  ),
                  );
               },
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget for Sidebar Navigation Items
  Widget _buildSidebarItem({
    required IconData icon,
    required String label,
    bool isSelected = false,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? Colors.grey.shade300 : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.black,
                size: 22,
              ),
              const SizedBox(width: 14),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
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

  // ========================================================= 
  // 2. PIE CHART SECTION 
  // ========================================================= 

  Widget _buildPieChartSection() { 
    return Container( 
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
          const SizedBox(height: 20), 

          const Text( 
            'User Statistics', 
            style: TextStyle( 
              fontSize: 22, 
              fontWeight: FontWeight.bold, 
            ), 
          ), 

          const SizedBox(height: 20), 

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
              border: Border.all( 
                color: Colors.black12, 
              ), 
            ), 
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [ 
                const Text( 
                  'Monthly Progress For Top Lessons', 
                  style: TextStyle( 
                    fontWeight: FontWeight.bold, 
                    fontSize: 14, 
                  ), 
                ), 

                const SizedBox(height: 30), 

                Container( 
                  padding: const EdgeInsets.only( 
                    bottom: 4, 
                  ), 
                  decoration: const BoxDecoration( 
                    border: Border( 
                      bottom: BorderSide( 
                        color: Color.fromARGB( 
                          255, 
                          101, 
                          100, 
                          100, 
                        ), 
                        width: 2.0, 
                      ), 
                    ), 
                  ), 
                  child: Row( 
                    mainAxisAlignment: 
                        MainAxisAlignment.spaceEvenly, 
                    crossAxisAlignment: 
                        CrossAxisAlignment.end, 
                    children: [ 
                      _buildBar( 
                        height: 120, 
                        color: const Color(0xFFFA8A87), 
                      ), 
                      _buildBar( 
                        height: 160, 
                        color: const Color(0xFF75D0F5), 
                      ), 
                      _buildBar( 
                        height: 90, 
                        color: const Color(0xFFC2EA7E), 
                      ), 
                      _buildBar( 
                        height: 90, 
                        color: const Color(0xFFE97ECA), 
                      ), 
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

  Widget _buildBar({ 
    required double height, 
    required Color color, 
  }) { 
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

  Widget _buildNewUserTable() { 
    return Center( 
      child: Container( 
        width: double.infinity, 
        height: 280, 
        padding: const EdgeInsets.all(16.0), 
        decoration: BoxDecoration( 
          color: const Color(0xFFF8F4D8), 
          borderRadius: BorderRadius.circular(24), 
          border: Border.all( 
            color: Colors.black12, 
            width: 1, 
          ), 
        ), 
        child: Column( 
          children: [ 
            const Text( 
              'New User Lists', 
              textAlign: TextAlign.center, 
              style: TextStyle( 
                fontSize: 18, 
                fontWeight: FontWeight.bold, 
                color: Colors.black87, 
              ), 
            ), 

            const SizedBox(height: 12), 

            Expanded( 
              child: Center( 
                child: SingleChildScrollView( 
                  scrollDirection: Axis.horizontal, 
                  child: DataTable( 
                    columnSpacing: 60, 

                    headingRowColor: 
                        WidgetStateProperty.all( 
                      const Color(0xFF8B6B58), 
                    ), 

                    headingTextStyle: const TextStyle( 
                      color: Colors.white, 
                      fontWeight: FontWeight.bold, 
                    ), 

                    columns: const [ 
                      DataColumn( 
                        label: Text('User ID'), 
                      ), 
                      DataColumn( 
                        label: Text('Name'), 
                      ), 
                      DataColumn( 
                        label: Text('Gender'), 
                      ), 
                      DataColumn( 
                        label: Text('Age'), 
                      ), 
                      DataColumn( 
                        label: Text('Reg.Date'), 
                      ), 
                    ], 

                    rows: const [ 
                      DataRow( 
                        cells: [ 
                          DataCell( 
                            Text('002501'), 
                          ), 
                          DataCell( 
                            Text('Reachny'), 
                          ), 
                          DataCell( 
                            Text('Female'), 
                          ), 
                          DataCell( 
                            Text('8'), 
                          ), 
                          DataCell( 
                            Text('29.07.2026'), 
                          ), 
                        ], 
                      ), 

                      DataRow( 
                        cells: [ 
                          DataCell( 
                            Text('002502'), 
                          ), 
                          DataCell( 
                            Text('Raksmey'), 
                          ), 
                          DataCell( 
                            Text('Male'), 
                          ), 
                          DataCell( 
                            Text('9'), 
                          ), 
                          DataCell( 
                            Text('29.07.2026'), 
                          ), 
                        ], 
                      ), 

                      DataRow( 
                        cells: [ 
                          DataCell( 
                            Text('002503'), 
                          ), 
                          DataCell( 
                            Text('Malish'), 
                          ), 
                          DataCell( 
                            Text('Female'), 
                          ), 
                          DataCell( 
                            Text('11'), 
                          ), 
                          DataCell( 
                            Text('29.07.2026'), 
                          ), 
                        ], 
                      ), 
                    ], 
                  ), 
                ), 
              ), 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 

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
      { 
        'time': '9:30am', 
        'user': 'Bora', 
        'action': 'registered', 
        'target': '', 
      }, 
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
          border: Border.all( 
            color: Colors.black12, 
          ), 
        ), 

        child: Column( 
          children: [ 
            const Text( 
              'Recent Activity', 
              textAlign: TextAlign.center, 
              style: TextStyle( 
                fontSize: 18, 
                fontWeight: FontWeight.bold, 
              ), 
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
        mainAxisSize: MainAxisSize.min, 
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [ 
          Text( 
            '[$time]', 
            style: const TextStyle( 
              fontSize: 12, 
              fontWeight: FontWeight.bold, 
            ), 
          ), 

          const SizedBox(width: 5), 

          Text( 
            target.isEmpty 
                ? '$user $action.' 
                : '$user $action $target.', 
            style: const TextStyle( 
              fontSize: 12, 
            ), 
          ), 
        ], 
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
          style: const TextStyle( 
            fontSize: 13, 
          ), 
        ), 
      ], 
    ); 
  } 
}