import 'package:flutter/material.dart';
import 'package:salhub/views/widget_tree.dart';
import 'package:salhub/views/widgets/lomhat/lomhat_list_tile_widget.dart';
import 'package:salhub/views/widgets/lomhat/quize_widget.dart';
import 'package:salhub/views/widgets/lomhat/start_question_widget.dart';

class LomhatPage extends StatelessWidget {
  const LomhatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "លំហាត់",
          style: TextStyle(fontSize: 24, color: Color(0xFF3F2514)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LomhatListTileWidget(
                color1: Color(0xFFFF7C7C),
                color2: Color(0xFFBF0101),
                engTxt: "Level 1",
                khTxt: "កម្រិត​ ១",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: QuizeWidget(
                    enLevel: "1",
                    khLevel: "១",
                    enQuestion: "How many Khmer consonants there?",
                    khQuestion: "១. តើព្យព្ជានៈខ្មែរមានប៉ុន្មានតួ?",
                    opOne: ["៣៣​ តួ (33)", true],
                    opTwo: ["៣១ តួ (31)", false],
                    opThree: ["៣០​ តួ (30)", false],
                    opFour: ["៣៥ តួ (35)", false],
                    nextPage: QuizeWidget(
                      enLevel: "1",
                      khLevel: "១",
                      enQuestion: "How many types of Khmer vowels are there?",
                      khQuestion: "២. តើស្រៈខ្មែរបែងចែកជា ប៉ុន្មានប្រភេទ?",
                      opOne: ["១​ ប្រភេទ (1)", false],
                      opTwo: ["២ ប្រភេទ (2)", true],
                      opThree: ["៣ ប្រភេទ (3)", false],
                      opFour: ["៤ ប្រភេទ (4)", false],
                      nextPage: QuizeWidget(
                        enLevel: "1",
                        khLevel: "១",
                        enQuestion: 'What does the word "ក្រហម" mean?',
                        khQuestion: '៣.  តើពាក្យ "ក្រហម" មានន័យជាអ្វី?',
                        opOne: ["១​ Blue", false],
                        opTwo: ["២ Red", true],
                        opThree: ["៣ Green", false],
                        opFour: ["៤ Yellow", false],
                        nextPage: QuizeWidget(
                          enLevel: "1",
                          khLevel: "១",
                          enQuestion:
                              'what is the name of this fruit in Khmer? ',
                          khQuestion: '៤. តើផ្លែឈើខាងលើជាផ្លែអ្វី?',
                          opOne: ["ចេក", false],
                          opTwo: ["ស្វាយ", false],
                          opThree: ["ល្ហុង", false],
                          opFour: ["ដូង", true],
                          img: './assets/images/coconut.png',
                          nextPage: QuizeWidget(
                            enLevel: "1",
                            khLevel: "១",
                            enQuestion:
                                'What do you say when you meet someone for the first time',
                            khQuestion:
                                '៥.តើអ្នកនិយាយអ្វីនៅពេលជួបនរណាម្នាក់ជាលើកដំបូង ?',
                            opOne: ["សួស្តី", true],
                            opTwo: ["លាហើយ", false],
                            opThree: ["អរគុណ", false],
                            opFour: ["សុំទោស", false],
                            nextPage: QuizeWidget(
                              enLevel: "1",
                              khLevel: "១",
                              enQuestion:
                                  'What is the name of this sport in Khmer?',
                              khQuestion: '៦. តើរូបខាងលើជាកីឡាអ្វី?',
                              opOne: ["បាល់បោះ", false],
                              opTwo: ["បាល់ទាត់", true],
                              opThree: ["ហែលទឹក", false],
                              opFour: ["ឡើកដើមដូង", false],
                              img: './assets/images/football.png',

                              nextPage: QuizeWidget(
                                enLevel: "1",
                                khLevel: "១",
                                enQuestion:
                                    'How do you write the province "Battambang" in Khmer? ',
                                khQuestion:
                                    '៧.តើខេត្ត "Battambang" សរសេរជាភាសាខ្មែរយ៉ាងដូចម្ដេច?',
                                opOne: ["បន្ទាយមានជ័យ", false],
                                opTwo: ["កំពង់ចាម", false],
                                opThree: ["បាត់ដំបង", true],
                                opFour: ["កំពង់ឆ្នាំង", false],
                                isLast: true,
                                nextPage: WidgetTree(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFFA968),
                color2: Color(0xFFC25705),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ២",
                nextPage: StartQuestionWidget(
                  level: "២",
                  nextPage: QuizeWidget(
                    enLevel: "2",
                    khLevel: "២",
                    enQuestion: "How many groups are khmer consonants divided?",
                    khQuestion: "១.តើព្យព្ជានៈខ្មែរចែកចេញជាប៉ុន្មានពួក ?",
                    opOne: ["១​​ ពួក", false],
                    opTwo: ["៣ ពួក", false],
                    opThree: ["៥ ពួក", false],
                    opFour: ["២ ពួក", true],
                    nextPage: QuizeWidget(
                      enLevel: "2",
                      khLevel: "២",
                      enQuestion: "What are the two types of Khmer vowels?  ",
                      khQuestion: "២. ស្រៈខ្មែរបែងចែកជាពីរប្រភេទអ្វីខ្លះ?",
                      opOne: ["ស្រៈនិស្ស័យ​ និងព្យព្ជានៈ", false],
                      opTwo: ["ស្រៈនិស្ស័យ និងស្រៈពេញតួ", true],
                      opThree: ["ព្យព្ជានៈ និងស្រៈពេញតួ", false],
                      opFour: ["មិនមានចម្លើយ", false],
                      nextPage: QuizeWidget(
                        enLevel: "2",
                        khLevel: "២",
                        enQuestion: "What is Lettuce mean?",
                        khQuestion: "៣. តើពាក្យបន្លែLettuce ជាអ្វី?",
                        opOne: ["ត្រសក់", false],
                        opTwo: ["សាឡាត់", true],
                        opThree: ["ត្រកូន", false],
                        opFour: ["ម្ទេស", false],
                        nextPage: QuizeWidget(
                          enLevel: "2",
                          khLevel: "២",
                          enQuestion:
                              "what is the name of this fruit in Khmer?",
                          khQuestion: "៤. តើផ្លែឈើខាងលើជាផ្លែអ្វី?",
                          opOne: ["ចេក", false],
                          opTwo: ["ស្វាយ", true],
                          opThree: ["ល្ហុង", false],
                          opFour: ["មៀន", false],
                          img: './assets/images/mango.png',
                          nextPage: QuizeWidget(
                            enLevel: "2",
                            khLevel: "២",
                            enQuestion:
                                ' How do you say "I\'m fine. Thank you. And you?" in Khmer? ',
                            khQuestion:
                                '៥.តើនិយាយពាក្យថា "I\'m fine. Thank you. And you?" ជាភាសាខ្មែរយ៉ាងដូចម្ដេច ?',
                            opOne: ["មិនចេះទេ។", false],
                            opTwo: ["ខ្ញុំមកពីសាលារៀន។", false],
                            opThree: ["ខ្ញុំក៏សុខសប្បាយដែរ។", false],
                            opFour: ["ខ្ញុំសុខសប្បាយ អរគុណ។ ចុះអ្នកវិញ?", true],
                            nextPage: QuizeWidget(
                              enLevel: "2",
                              khLevel: "២",
                              enQuestion:
                                  'What is the name of this sport in Khmer?',
                              khQuestion: '៦. តើរូបខាងលើជាកីឡាអ្វី?',
                              opOne: ["បាល់បោះ", true],
                              opTwo: ["បាល់ទាត់", false],
                              opThree: ["ហែលទឹក", false],
                              opFour: ["ឡើងដើមត្នោត", false],
                              img: './assets/images/volleyball.png',
                              nextPage: QuizeWidget(
                                enLevel: "2",
                                khLevel: "២",
                                enQuestion:
                                    'which country is Kampot province located?',
                                khQuestion: '៧.តើខេត្តកំពតស្ថិតនៅប្រទេសណា ?',
                                opOne: ["ចិន", false],
                                opTwo: ["ឡាវ", false],
                                opThree: ["កូរ៉េ", false],
                                opFour: ["កម្ពុជា", true],
                                isLast: true,

                                nextPage: WidgetTree(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFCF3BFF),
                color2: Color(0xFF4B0064),
                engTxt: "Level 3",
                khTxt: "កម្រិត​ ៣",
                nextPage: StartQuestionWidget(
                  level: "៣",
                  nextPage: QuizeWidget(
                    enLevel: "3",
                    khLevel: "៣",
                    enQuestion: "How many independent vowels are there?",
                    khQuestion: "១.តើស្រៈពេញតួមានចំនួនប៉ុន្មានតួ?",
                    opOne: ["២៣តួ", false],
                    opTwo: ["១២តួ", false],
                    opThree: ["១៥តួ", true],
                    opFour: ["៣៣​តួ", false],
                    nextPage: QuizeWidget(
                      enLevel: "3",
                      khLevel: "៣",
                      enQuestion:
                          "Vowel signs can be combined with all 33 Khmer consonants? ",
                      khQuestion:
                          "២. តើសញ្ញាស្រៈអាចភ្ជាប់តួជាមួយ និងសញ្ញាព្យញ្ជនៈ ទាំង ៣៣តួបានទេ?",
                      opOne: ["អាចភ្ជាប់(Can)", false],
                      opTwo: ["អាចភ្ជាប់(Can)", true],
                      opThree: ["", false],
                      opFour: ["", false],
                      nextPage: QuizeWidget(
                        enLevel: "3",
                        khLevel: "៣",
                        enQuestion: " What is the Door mean?",
                        khQuestion: "៣. តើពាក្យDoor ជាអ្វី?",
                        opOne: ["ទ្វារ", true],
                        opTwo: ["តុ", false],
                        opThree: ["កៅអី", false],
                        opFour: ["គ្រែ", false],
                        nextPage: QuizeWidget(
                          enLevel: "3",
                          khLevel: "៣",
                          enQuestion:
                              "What is the name of this fruit in Khmer?",
                          khQuestion: "៤. តើផ្លែឈើខាងលើជាផ្លែអ្វី?",
                          opOne: ["ចេក", true],
                          opTwo: ["ស្វាយ", false],
                          opThree: ["ល្ហុង", false],
                          opFour: ["មៀន", false],
                          img: './assets/images/banana.png',
                          nextPage: QuizeWidget(
                            enLevel: "3",
                            khLevel: "៣",
                            enQuestion:
                                'How do you say "How much does it cost?" in Khmer?',
                            khQuestion:
                                '៥.តើនិយាយពាក្យថា "How much does it cost?" ជាភាសាខ្មែរយ៉ាងដូចម្ដេច?',
                            opOne: ["ថ្លៃប៉ុន្មាន?", true],
                            opTwo: ["ចុះបន្តិចបានទេ?", false],
                            opThree: ["យកអាវពីរ", false],
                            opFour: ["ចុះអ្នកវិញ?", false],
                            nextPage: QuizeWidget(
                              enLevel: "3",
                              khLevel: "៣",
                              enQuestion:
                                  'what is the name of this sport in Khmer? ',
                              khQuestion: '៦. តើរូបខាងលើជាកីឡាអ្វី?',
                              opOne: ["បាល់បោះ", false],
                              opTwo: ["បាល់ទាត់", false],
                              opThree: ["ហែលទឹក", true],
                              opFour: ["ឡើកដើមត្នោត", false],
                              img: './assets/images/swim.png',
                              nextPage: QuizeWidget(
                                enLevel: "3",
                                khLevel: "៣",
                                enQuestion:
                                    'Which province is the most famous in Cambodia?',
                                khQuestion:
                                    '៧.តើខេត្តណាដែលល្បីជាងគេនៅប្រទេសកម្ពុជា?',
                                opOne: ["ខេត្តកំពត", false],
                                opTwo: ["ខេត្តសៀមរាប", true],
                                opThree: ["ខេត្តកណ្ដាល", false],
                                opFour: ["ខេត្តបាត់ដំបង", false],
                                isLast: true,
                                nextPage: WidgetTree(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFF45FF6D),
                color2: Color(0xFF369B05),
                engTxt: "Level 4",
                khTxt: "កម្រិត​ ៤",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: QuizeWidget(
                    enLevel: "4",
                    khLevel: "៤",
                    enQuestion: 'How many dependent vowels are there?  ',
                    khQuestion: '១. តើស្រៈនិស្ស័យមានចំនួនប៉ុន្មាន?',
                    opOne: ["២១​ តួ", false],
                    opTwo: ["៣១​ តួ", false],
                    opThree: ["២១​ តួ", false],
                    opFour: ["២៣​ តួ", true],
                    isLast: true,
                    nextPage: QuizeWidget(
                      enLevel: "4",
                      khLevel: "៤",
                      enQuestion: 'What is the meaning of noun?',
                      khQuestion: '២. តើនាមមានន័យដូចម្ដេច?',
                      opOne: [
                        "នាម គឺជាពាក្យសម្រាប់សម្គាល់វត្ថុអ្វីមួយ។ (A noun is a thing.)",
                        false,
                      ],
                      opTwo: [
                        "នាម គឺជាពាក្យសម្រាប់សម្គាល់វត្ថុអ្វីមួយ​ សត្វ និងរុក្ខជាតិ។(A noun is a thing, animal and plant )",
                        false,
                      ],
                      opThree: [
                        "នាម គឺជាពាក្យសម្រាប់សម្គាល់មនុស្ស សត្វ រុក្ខជាតិ និងទីកន្លែង ។(A noun is a name of a person, animal, plant and place. )",
                        false,
                      ],
                      opFour: [
                        "នាម គឺជាពាក្យសម្រាប់សម្គាល់មនុស្ស សត្វ រុក្ខជាតិ ទីកន្លែង និងវត្ថុអ្វីមួយ។ (A noun is a name of a person, animal, plant, place and thing.)",
                        true,
                      ],
                      isLast: true,
                      nextPage: WidgetTree(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFF257001),
                color2: Color(0xFF369B05),
                engTxt: "Level 5",
                khTxt: "កម្រិត​ ៥",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFF5C99FF),
                color2: Color(0xFF001B48),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ៦",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFF3C88),
                color2: Color(0xFF731439),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ៧",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFB8F8FE),
                color2: Color(0xFF003C42),
                engTxt: "Coming soon",
                khTxt: "Level 9",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFEEEB37),
                color2: Color(0xFFB9B306),
                engTxt: "Coming soon",
                khTxt: "Level 9",
                nextPage: Placeholder(),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
