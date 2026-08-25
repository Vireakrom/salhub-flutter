import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class GrammarLesson4 extends StatelessWidget {
  const GrammarLesson4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sc_background.png'),
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                    Colors.white.withValues(alpha: 0.1),
                    BlendMode.dstATop,
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 100),
                Center(
                  child: Text(
                    'សព្វនាមបុរិសៈ ​',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF6D3F21),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                // Main paragraph
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(
                      height: 1.7,
                      
                    ),
                    children: [
                      TextSpan(
                        text: '   សព្វតាមបុរិសៈ គឺជាពាក្យសម្រាប់ជំនួសឱ្យនាមឬកន្សោមនាមដែល គេនិយាយរួចមកហើយ ។\n',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        'នាទីរបស់សព្វនាមបុរិសៈ សម្រាប់ប្រើបង្ហាញ​ បុគ្គលក្នុងការរួមការប្រាស្រ័យទាក់ទងគ្នា។\n​ ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '  ឧទាហរណ៍: \n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),
                      
                      TextSpan(
                        text: 
                        '   -  ឯងទៅណា? ខ្ញុំទៅសាលារៀន ។\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        'ជំនួសកន្សោមនាម\n',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '  ឧទាហរណ៍\n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        '   -  ម្តាយឯងទៅណា? គាត់អញ្ជើញទៅផ្សារហើយ ។\n'
                        ,
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ), 

                      TextSpan(
                        text: '  សព្វនាមបុរិសៈមាន\n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        '   -  បុរសទី១ : យើង. ខ្ញុំ. អញ. អាត្មា, ទូលបង្គំ ។\n'
                        '   -  បុរសទី២ : ឯង. អ្នក. ពួកឯង. ពួកលោក ។\n'
                        '   -  បុរសទី៣ : វា. គាត់. គេ. លោក. នាង.ព្រះអង្គ. ពួកវា. ពួកគាត់. ពួកគេ ។\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ), 
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}