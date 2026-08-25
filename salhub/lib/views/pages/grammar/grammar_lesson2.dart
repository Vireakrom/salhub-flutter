import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class GrammarLesson2 extends StatelessWidget {
  const GrammarLesson2({super.key});

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
                    'នាម ​និង គុណនាម',
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
                        text: '   នាម គឺជាពាក្យសំដីសម្រាប់សម្គាល់មនុស្ស សត្វ រុក្ខជាតិ ទីកន្លែង និងវត្ថុអ្វីមួយ ។\n',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),
                      
                      TextSpan(
                        text: 'ឧទាហរណ៍ : \n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        'នីតា​ ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: ' បានចញ្ចឹម',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                  
                      TextSpan(
                        text: 'ឆ្កែ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ពីរក្បាល​ និង',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 'មាន់ ទា',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ជាច្រើនក្បាលទៀត ។ នាងតែងបោសសម្អាត ទ្រុងមាន់ ទា ជារៀងរាល់ថ្ងៃ។​ នីតាយក',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                  
                      TextSpan(
                        text: 'លាមក ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: ' សត្វទាំងអស់នោះ ទៅចាក់ក្នុងរណ្តៅដី ក្បែរ',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                    
                      TextSpan(
                        text: 'ដើមស្វាយ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: ' ឯ',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                    
                      TextSpan(
                        text: 'ចម្ការ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ក្រោយផ្ទះ។\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      
                      TextSpan(
                        text: 'ពាក្យ\n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),


                      TextSpan(
                        text: '​- នីតា ជាពាក្យ​ ',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'សម្គាល់មនុស្ស\n',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '- ឆ្កែ មាន់ ទា ជាពាក្យ ',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '​​  សម្គាល់សត្វ\n',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                       TextSpan(
                        text: '- ទ្រូង លាមក ជាពាក្យ',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '​​ សម្គាល់វត្ថុ\n',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '- ដើមស្វាយ​ ជាពាក្យ',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '​​ សម្គាល់រុក្ខជាតិ\n',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '- ចម្ការ ជាពាក្យ',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '​​ សម្គាល់ទីកន្លែង\n',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '​​ ​  នាមមានច្រើនប្រភេទដូចជា នាមសាធារណ៍ ឬសាធារណនាម នាមអសាធារណឬអសាធារណនាម នាមការក៍ឬការកនាម នាមករណ៍ ឬករណនាម នាមរូបី នាមអរូបី នាមជីវចល និងនាមអជីវចល ។\n',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                       TextSpan(
                        text: '   គុណនាម ជាពាក្យបញ្ជាក់លក្ខណៈរបស់នាម ។ គុណនាមមាន ទីតាំងនៅខាងស្តាំនាម ។\n',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ឧទាហរណ៍ :  \n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        'ភូមិខ្ញុំជា',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ភូមិ',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ភូមិ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 
                        'ពីបុរាណ តែមេភូមិខ្ញុំមាន',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'គំនិត',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ជឿនលឿន ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 
                        '។\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 
                        '  - គុណនាម “ចាស់” បញ្ជាក់លក្ខណៈរបស់នាម "ភូមិ”\n '
                        '  - គុណនាម “ជឿនលឿន” បញ្ជាក់លក្ខណៈរបស់នាម “គំនិត“...។\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: ' គុណនាមមានពីរប្រភេទគឺ គុណនាមប្រក្រតីនិងគុណនាមកំណត់ ។ ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
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
