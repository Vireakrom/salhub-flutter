import 'package:flutter/material.dart';
import 'package:salhub/data/notfiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return Container(
          margin: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavItem(Icons.home, "ទំព័រដើម", 0, selectedPage),
              _buildNavItem(Icons.assignment, "លំហាត់", 1, selectedPage),
              _buildNavItem(
                Icons.bar_chart_outlined,
                "របាយការណ៏",
                2,
                selectedPage,
              ),
              _buildNavItem(Icons.person, "ខ្ញុំ", 3, selectedPage),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNavItem(
    IconData icon,
    String label,
    int index,
    int selectedPage,
  ) {
    final bool isSelected = selectedPage == index;
    final Color activeColor = Color(0xFF23B80F);
    final Color inactiveColor = Colors.grey;
    return GestureDetector(
      onTap: () {
        selectedPageNotifier.value = index;
      },
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 75,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? activeColor : inactiveColor,
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? activeColor : inactiveColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
