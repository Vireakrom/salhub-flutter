import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class GrammarLesson1 extends StatelessWidget {
  const GrammarLesson1({super.key});

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
                    'ស្រៈផ្សំ ​នឹង ព្យព្ជានៈ',
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
                        text: 'ស្រៈខ្មែរបែងចែកជាពីរប្រភេទគឺ',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 'ស្រៈនិស្ស័យ',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: ' និង ',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 'ស្រៈពេញតួ',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: '។ សញ្ញាស្រៈខ្មែរទាំងអស់អាចយក មកសរសេរភ្ជាប់នឹងតួព្យញ្ជនៈបាន។ សម្រាប់ស្រៈនិស្ស័យ ដូចជាសញ្ញាស្រៈ',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),
                   
                      TextSpan(
                        text: 'ា',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: ' អាចសរសេរនឹង ',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                        
                        ),

                      TextSpan(
                        text: 'ក',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: ' ឱ្យទៅជា ',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 'កា',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: ' និង​',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: ' ខ​ ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: 'ឱ្យទៅជា​',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '​ ខា ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: ' ។ សញ្ញា ',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: ' ិ ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: ' អាច​សរសេរជាមួយ ',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),
                      
                      TextSpan(
                        text: ' ក ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: 'ឱ្យទៅជា​',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: ' កិ ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: ' អាចសរសេរជាមួយ',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: ' ជ ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text: '​ ឱ្យទៅជា​​ ​',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 'ជិ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      const TextSpan(
                        text:' ជាដើម។​ ចំពោះស្រៈពេញតួខុសពីស្រៈនិស្ស័យ។​ ស្រៈពេញតួអាចសរសេរតែឯកឯងបានដោយមិនបាច់ពឹងផ្អែកលើតួព្យញ្ជនៈ។\n',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                        ),
                      
                      TextSpan(
                        text: 'ឧទាហរណ៍ : ស្រៈនិស្ស័យ\n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        ' -  ស្រៈផ្សំនឹងព្យញ្ជនៈ “ ក ”\n'
                        '     ក កា កិ​ កី​ ..........កោះ ។\n'
                        ' -  ស្រៈផ្សំនឹងព្យញ្ជនៈ “ ខ ”\n'
                        '     ខ ខា ខិ ខី ..........ខោះ ។\n'
                        ' - ស្រៈផ្សំនឹងព្យញ្ជនៈ “ គ ”\n'
                        '     គ គា គិ គី​ ..........តោះ ។\n'
                        ' - ស្រៈផ្សំនឹងព្យញ្ជនៈ “ ឃ ”\n'
                        '     ឃ ឃា ឃិ​​ ឃី​ ..........ឃោះ ។\n'
                        ' -  “ កា-ខា ” កត់សួរសំឡេង “ អា ”\n'
                        ' -  "គា-ឃា” កត់សួរសំឡេង “ អ៊ា ” ។\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 
                        'ដូចនេះ៖ សញ្ញាស្រៈភ្ជាប់តួអាចប្រើបានជាមួយនិងសញ្ញាព្យញ្ជនៈ ទាំង ៣៣តួ។\n',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 'ឧទាហរណ៍ : ស្រៈពេញតួ\n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '-  អ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'គារ\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '-  អា',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ហារ\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '-  ឦ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'សាន',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '​​ [អីសាន]\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '-  ឥ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'សី',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '​​ [អីសី]\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '-  ឧ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'សភា',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '​​ [អុសភា]\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '-  ឧ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ន',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '​​ [អូន]\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '-  ឪ',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ម៉ាល់',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '​​  [អូវម៉ាល់].........\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: '​​  ដូចនេះ៖ ស្រះពេញតួ ជាស្រៈដែលខ្មែរយើងបង្កើតឡើងដើម្បីកត់ត្រាពាក្យ ដែលមានប្រភពពីបាលី និងសំស្ក្រឹត ។\n',
                        style: TextStyle(
                          color: const Color(0xFF0271AC),
                          fontSize: 16,
                        ),
                      ),

                       TextSpan(
                        text: 'កំណត់ចំណាំ :\n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        '​- ស្រះពេញតួមិនមែនជាសញ្ញាស្រះបាលី ឬសំស្ក្រឹតនោះទេ ។\n'
                        '- សំស្ក្រឹតក្តី បាលីក្តីគ្មានតួអក្សរទេ មានតែភាសាប៉ុណ្ណោះ',
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
