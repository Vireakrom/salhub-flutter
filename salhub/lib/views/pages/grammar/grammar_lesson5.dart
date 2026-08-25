import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class GrammarLesson5 extends StatelessWidget {
  const GrammarLesson5({super.key});

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
                    'ល្បះបញ្ជា​',
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
                        text: '   ល្បះបញ្ជា  ជាល្បះសម្រាប់ប្រើបង្គាប់ឱ្យដំបូន្មានធ្វើសំណូមពរ និងអង្វរករ ។\n',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'ឧទាហរណ៍: \n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),
                      
                      TextSpan(
                        text: 
                        '  -  បង្គាប់ៈ ទៅ! ចូរឯងទៅសាលា ។\n'
                        '  -  ឱ្យដំបូន្មាន : ចូរឯងកុំជក់បារីនាំឱ្យខូចសុខភាព។\n'
                        '  -  ធ្វើសំណូមពរ : សូមមិត្តធ្វើដំណើរឱ្យបានសុខ ។\n'
                        '  -  អង្វរ : សូមអ្នកម្តាយអភ័យទោសឱ្យកូនផង ។\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        'ទំរង់ល្បះបញ្ជាមាន \n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        '  -  ប្រើកិរិយាគ្មានប្រធាន។\n'
                        '  -  ប្រើពាក្យបន្ថែមលើកិរិយា។\n'
                        '  -  “ ចូរ ” នៅល្បះបញ្ជា (អ្នកធំទៅកាន់អ្នកតូច) ។\n'
                        '  -  " សូម ” នៅដើមល្បះបញ្ជា (អ្នកតូចទៅកាន់អ្នកធំ) ។\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 'ដើម្បីបញ្ចប់ល្បះបញ្ជា គេអាចប្រើសញ្ញា "។” ឬ សញ្ញា "!” ។ ល្បះបញ្ជាបញ្ចប់ដោយសញ្ញា ” ។ ” ការបញ្ជា មានភាពទន់ភ្លន់។ ល្បះបញ្ជាបញ្ចប់ដោយ ” ! ” ការ បញ្ជាឬសំណូមពរមានន័យដាច់ខាត ។\n',
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