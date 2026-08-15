import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class GrammarLesson3 extends StatelessWidget {
  const GrammarLesson3({super.key});

  
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
                    'ន័យដូច​ និង ន័យផ្ទុយ ​​​',
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
                        text: '   ន័យដូច គឺជាពាក្យទាំងឡាយណា ដែលមានន័យដូចឬប្រហាក់ប្រ ហែលគ្នាតែសំណេរ និង សំណួរពុំដូចគ្នាទេ ។\n',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 'ឧទាហរណ៍ : ពាក្យន័យដូច\n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        ' -  សម្តាយ.ម៉ាក់. ម៉ែ. ញោមស្រី. ជនទី. ជនី.មាតុ ។\n'
                        
                        ' -  ព្រះអាទិត្យ. សុរិយា. ទិនករ. ថ្ងៃ. ទិវាករ. សុរិយេ. វិភាករ. សុរិយ។\n'
                        
                        ' -  ព្រះចន្ទ. ព្រះនិសាករ. ចន្ទ្រា.  រាត្រីមណី. លោកខែ ។\n'
                        
                        ' -  ចម្រើន លូតលាស់. រុងរឿង. ថ្កុំថ្កើង,...។\n'
                        
                        ' -  ស្លាប់ សុគត ក្ស័យ. ក្សិណក្ស័យ. ងាប់. អនិច្ចកម្ម. អនិច្ចធម្ម. អសញ\n'
                        ' -  កម្ម អសញ្ញភាព. សោយទិវង្គត. សោយពិរាល័យ. សោយទិព្វជង្គត.\n'
                        ' -  បរិនិព្វាន. ខូច. មរណៈ...។\n',
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                        ),
                      ),
                      
                      TextSpan(
                        text: 
                        '   ន័យផ្ទុយ ជាពាក្យទាំងឡាយណា ដែលមានន័យប្រឈមមុខគ្នា ឬ ផ្ទុយគ្នា ។ ពាក្យន័យផ្ទុយក៏ជាប្រភេទមួយទៀត នៃពាក្យដែលមានន័យកំណត់ដោយ ទីសេចក្តីដែរ ។\n',
                        style: TextStyle(
                          color: const Color(0xFF6D3F21),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 'ឧទាហរណ៍ :  ពាក្យន័យផ្ទុយ\n',
                        style: TextStyle(
                          color: const Color(0xFFBA0303),
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: 
                        ' -  ឈឺ ≠ ជា           '
                        ' -  រស់ ≠ ស្លាប់\n'
                        ' -  បុរាណ ≠ ទំនើប    '
                        ' -  អង់អាច ≠ កំសាក\n'
                        ' -  ទៅ ≠ នៅ        '
                        ' -  មាន ≠ ក្រ\n'
                        ' -  ល្អ ≠ អាក្រក់      '
                        ' -  ជនបទ ≠ ទីក្រុង\n'
                        ' -  ខ្មៅ ≠ ស        '
                        ' -  បណ្ឌិត ≠ ពាល\n'
                        ' -  ត្រង់ ≠ វៀច      '
                        ' -  យឺត ≠ លឿន.រហ័ស\n'
                        ' -  មេឃ ≠ ដី      '
                        ,
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