import 'package:flutter/material.dart';
import 'package:salhub/views/pages/general_culture/general_culture_page.dart';
import 'package:salhub/views/pages/grammar/grammar_page.dart';
import 'package:salhub/views/pages/jomrous/jomrous_page.dart';
import 'package:salhub/views/pages/lomhat_page/lomhat_page.dart';
import 'package:salhub/views/pages/rean_peasa/rean_peasa_page.dart';
import 'package:salhub/views/widgets/lomhat/quize_widget.dart';


class AdminContentsPage extends StatelessWidget {
  const AdminContentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFFFDF2),
        body: SafeArea(
          child: Scrollbar(
            thumbVisibility: true,
            thickness: 8,
            radius: const Radius.circular(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    "Content Manager",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F2514),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Lesson 1 Card
                  const LessonCard(
                    symbolText: 'ក ​ ិ​ ឥ',
                    symbolTextColor: Color(0xFFC79A16),
                    lessonTitle: 'Lesson:',
                    khmerTitle: 'អក្សរខ្មែរ',
                    subtitle: '​ព្យញ្ជនៈ ស្រៈនិស្ស័យ ស្រៈពេញតួ',
                  ),

                  // Lesson 2 Card
                  const LessonCard(
                    symbolText: '១​ ២ ៣',
                    symbolTextColor: Color(0xFF0097B5),
                    boxColor: Color(0xFFB8F8FE),
                    borderColor: Color(0xFF0097B5),
                    lessonTitle: 'Lesson:',
                    khmerTitle: 'រៀនលេខខ្មែរ',
                    subtitle: '',
                    
                  ),
                 
                  // Lesson 3 Card (Icon Example)
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GrammarPage(),
                        ),
                      );
                    },
                    child: LessonCard(
                      customWidget: Image.asset(
                        'assets/book.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      boxColor: const Color(0xFFE6B8FE),
                      borderColor: const Color(0xFFB342FF),
                      lessonTitle: 'Lesson:',
                      khmerTitle: 'រៀនវេយ្យាករណ៍',
                      subtitle: '',
                    ),
                  ),
                  
                  // Lesson 4 Card
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReanPeasaPage(),
                        ),
                      );
                    },
                    child: LessonCard(
                      customWidget: Image.asset(
                        'assets/message.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      boxColor: const Color(0xFFFF8373),
                      borderColor: const Color(0xFFBA0303),
                      lessonTitle: 'Lesson:',
                      khmerTitle: 'រៀនភាសាប្រចាំថ្ងៃ',
                      subtitle: '',
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const JomrousPage(),
                        ),
                      );
                    },
                    child: LessonCard(
                      customWidget: Image.asset(
                        'assets/hand.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      boxColor: const Color(0xFFFFC973),
                      borderColor: const Color(0xFFBC850C),
                      lessonTitle: 'Lesson:',
                      khmerTitle: 'ភាសាចម្រុះ',
                      subtitle: '',
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GeneralCulturePage(),
                        ),
                      );
                    },
                    child: LessonCard(
                      customWidget: Image.asset(
                        'assets/eye_book.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      boxColor: const Color(0xFFFFC973),
                      borderColor: const Color(0xFFBC850C),
                      lessonTitle: 'Lesson:',
                      khmerTitle: 'វប្បធម៍ទូរទៅ',
                      subtitle: '',
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LomhatPage(),
                        ),
                      );
                    },
                    child: LessonCard(
                      customWidget: Image.asset(
                        'assets/background_logo.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      boxColor: const Color(0xFF79FF80),
                      borderColor: const Color(0xFF80CBC4),
                      lessonTitle: 'Lesson:',
                      khmerTitle: 'លំហាត់',
                      subtitle: '',
                    ),
                  ),


            
                  // Bottom Add Lesson Card with Images on both sides
                  AddLessonCard(
                    imagePath: 'assets/background_logo.png', // Replace with your image path
                    onTap: () {
                      // Action when "Add Lesson" is pressed
                    },
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Custom Widget for the "Add Lesson" Card with side images
class AddLessonCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const AddLessonCard({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFFCEFCD),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color(0xFF7F6464),
          width: 1.5,
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            offset: Offset(0, 2),
            color: Colors.black12,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Side Image
          Image.asset(
            imagePath,
            height: 85,
            width: 85,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.pets,
                size: 65,
                color: Color(0xFFD35400),
              );
            },
          ),

          // Center Button
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFAF1DA),
                  foregroundColor: const Color(0xFF6D3F21),
                  elevation: 3,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                    side: const BorderSide(
                      color: Color(0xFF5D4837),
                      width: 1.5,
                    ),
                  ),
                ),
                child: const Text(
                  '+ Add Lesson',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6D3F21),
                  ),
                ),
              ),
            ),
          ),

          // Right Side Image
          Image.asset(
            imagePath,
            height: 85,
            width: 85,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.pets,
                size: 65,
                color: Color(0xFFD35400),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Reusable LessonCard Widget
class LessonCard extends StatelessWidget {
  final String? symbolText;
  final IconData? icon;
  final Widget? customWidget;

  final Color boxColor;
  final Color borderColor;
  final Color symbolTextColor;
  final Color iconColor;

  final String lessonTitle;
  final String khmerTitle;
  final String subtitle;

  const LessonCard({
    super.key,
    this.symbolText,
    this.icon,
    this.customWidget,
    this.boxColor = const Color(0xFFFFF7C2),
    this.borderColor = const Color(0xFFE5C858),
    this.symbolTextColor = const Color(0xFFC79A16),
    this.iconColor = const Color(0xFFC79A16),
    required this.lessonTitle,
    required this.khmerTitle,
    required this.subtitle,
  });

  Widget _buildBoxContent() {
    if (customWidget != null) return customWidget!;
    if (icon != null) return Icon(icon, size: 42, color: iconColor);
    return Text(
      symbolText ?? '',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: symbolTextColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFCEFCD),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color(0xFF7F6464),
          width: 1.5,
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left Graphic Box
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: borderColor,
                    width: 1.5,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(0, 3),
                      color: Colors.black12,
                    ),
                  ],
                ),
                child: Center(
                  child: _buildBoxContent(),
                ),
              ),
              const SizedBox(width: 16),

              // Title and Subtitle Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lessonTitle,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6D3F21),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      khmerTitle,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6D3F21),
                      ),
                    ),
                    if (subtitle.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF6D3F21),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Manage Lesson Button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFAF1DA),
              foregroundColor: const Color(0xFF332215),
              elevation: 2,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Color(0xFF5D4837),
                  width: 1.5,
                ),
              ),
            ),
            child: const Text(
              'Manage Lesson',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}