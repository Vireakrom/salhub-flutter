import 'package:flutter/material.dart';
import 'package:salhub/views/widget_tree.dart';
import 'package:salhub/views/widgets/lomhat/coming_zoon_widget.dart';
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
                  level: "៤",
                  nextPage: QuizeWidget(
                    enLevel: "4",
                    khLevel: "៤",
                    enQuestion: 'How many dependent vowels are there?  ',
                    khQuestion: '១. តើស្រៈនិស្ស័យមានចំនួនប៉ុន្មាន?',
                    opOne: ["២១​ តួ", false],
                    opTwo: ["៣១​ តួ", false],
                    opThree: ["២៥ តួ", false],
                    opFour: ["២៣​ តួ", true],
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
                      nextPage: QuizeWidget(
                        enLevel: "4",
                        khLevel: "៤",
                        enQuestion: 'Where do customers order food?',
                        khQuestion: '៣.តើអតិថិជនបញ្ជាទិញម្ហូបនៅឯណា?',
                        opOne: ["ភោជនីយដ្ឋាន", true],
                        opTwo: ["សាលារៀន", false],
                        opThree: ["មន្ទីរពេទ្យ", false],
                        opFour: ["បណ្ណាល័យ", false],
                        nextPage: QuizeWidget(
                          enLevel: "4",
                          khLevel: "៤",
                          enQuestion:
                              'What is the name of this fruit in Khmer?   ',
                          khQuestion: '៤. តើផ្លែឈើខាងលើជាផ្លែអ្វី?',
                          opOne: ["ចេក", false],
                          opTwo: ["ស្វាយ", false],
                          opThree: ["ល្ហុង", true],
                          opFour: ["មៀន", false],
                          img: './assets/images/papaya.png',
                          nextPage: QuizeWidget(
                            enLevel: "4",
                            khLevel: "៤",
                            enQuestion: 'How do you say "7 dollars" in Khmer?',
                            khQuestion:
                                '៥.តើនិយាយពាក្យថា "7 dollars" ជាភាសាខ្មែរយ៉ាងដូចម្ដេច?',
                            opOne: ["៥ ដុល្លារ", false],
                            opTwo: ["២ ដុល្លារ", false],
                            opThree: ["៩ ដុល្លារ", false],
                            opFour: ["៧ ដុល្លារ", true],
                            nextPage: QuizeWidget(
                              enLevel: "4",
                              khLevel: "៤",
                              enQuestion:
                                  'What is the meaning of menu in Khmer? ',
                              khQuestion: '៦. តើពាក្យ​ Menu ជាអ្វី?',
                              opOne: ["បញ្ជីមុខម្ហូប", true],
                              opTwo: ["អាហារ", false],
                              opThree: ["បញ្ជាទិញ", false],
                              opFour: ["បាយ", false],
                              nextPage: QuizeWidget(
                                enLevel: "4",
                                khLevel: "៤",
                                enQuestion:
                                    'What is the name of the capital of Cambodia?',
                                khQuestion:
                                    '៧.តើរាជធានីនៅប្រទេសកម្ពុជាឈ្មោះអ្វី',
                                opOne: ["រាជធានីភ្នំពេញ", true],
                                opTwo: ["រាជធានីសៀមរាប", false],
                                opThree: ["រាជធានីកណ្ដាល", false],
                                opFour: ["រាជធានីបាត់ដំបង", false],
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
                color1: Color(0xFF257001),
                color2: Color(0xFF369B05),
                engTxt: "Level 5",
                khTxt: "កម្រិត​ ៥",
                nextPage: StartQuestionWidget(
                  level: "៥",
                  nextPage: QuizeWidget(
                    enLevel: "5",
                    khLevel: "៥",
                    enQuestion:
                        'Can independent vowels be used as subscript consonants?  ',
                    khQuestion: '១.​តើស្រៈពេញតួអាចយកទៅធ្វើជាជើងព្យញ្ជនៈបានទេ ?',
                    opOne: ["បាន", false],
                    opTwo: ["ផ្សេងៗ", false],
                    opThree: ["មិនបាន", true],
                    opFour: ["", false],

                    nextPage: QuizeWidget(
                      enLevel: "5",
                      khLevel: "៥",
                      enQuestion: 'What is an adjective? Where is it placed?',
                      khQuestion:
                          '២. តើគុណនាមមានន័យដូចម្ដេច? តើគុណនាមមានទីតាំងនៅឯណា?',
                      opOne: [
                        "គុណនាមជាពាក្យបញ្ជាក់លក្ខណៈរបស់នាមហើយមានទីតាំងនៅខាងឆ្វេងឫស្តានាម។ An adjective is a word that describes a noun.In Khmer, placed before or after the noun ",
                        false,
                      ],
                      opTwo: [
                        "គុណនាមជាពាក្យបញ្ជាក់លក្ខណៈរបស់នាមហើយមានទីតាំងនៅខាងឆ្វេងនាម។ An adjective is a word that describes a noun.In Khmer, placed before the noun.",
                        false,
                      ],
                      opThree: [
                        "គុណនាមជាពាក្យបញ្ជាក់លក្ខណៈរបស់នាមហើយមានទីតាំងនៅខាងស្តាំនាម។ An adjective is a word that describes a noun.In Khmer, placed after the noun.",
                        true,
                      ],
                      opFour: ["មិនមានចម្លើយ no answer", false],

                      nextPage: QuizeWidget(
                        enLevel: "5",
                        khLevel: "៥",
                        enQuestion: 'What day comes before Friday?',
                        khQuestion: '៣.តើថ្ងៃណាមកមុនថ្ងៃសុក្រ?',
                        opOne: ["ថ្ងៃអង្គារ", false],
                        opTwo: ["ថ្ងៃពុធ", false],
                        opThree: ["ថ្ងៃព្រហស្បតិ៍", true],
                        opFour: ["ថ្ងៃសៅរ៍", false],

                        nextPage: QuizeWidget(
                          enLevel: "5",
                          khLevel: "៥",
                          enQuestion:
                              'What is the name of this fruit in Khmer?',
                          khQuestion: '៤. តើផ្លែឈើខាងលើជាផ្លែអ្វី?',
                          opOne: ["ចេក", false],
                          opTwo: ["ស្វាយ", false],
                          opThree: ["ល្ហុង", false],
                          opFour: ["ប៉ោម", true],
                          img: './assets/images/apple.png',
                          nextPage: QuizeWidget(
                            enLevel: "5",
                            khLevel: "៥",
                            enQuestion:
                                ' What does "ការងារនេះត្រូវការបទពិសោធន៍" mean?',
                            khQuestion:
                                '៥."ការងារនេះត្រូវការបទពិសោធន៍" មានន័យជាអ្វី?',
                            opOne: ["This job requires experience", true],
                            opTwo: ["I want to quit my job", false],
                            opThree: ["I will start school tomorrow", false],
                            opFour: ["I don't like this company", false],
                            nextPage: QuizeWidget(
                              enLevel: "5",
                              khLevel: "៥",
                              enQuestion:
                                  'What is the meaning of Food in Khmer? ',
                              khQuestion: '៦. តើពាក្យ​ Food មានន័យដូចម្ដេច?',
                              opOne: ["បញ្ជីមុខម្ហូប", false],
                              opTwo: ["អាហារ", true],
                              opThree: ["បញ្ជាទិញ", false],
                              opFour: ["បាយ", false],
                              nextPage: QuizeWidget(
                                enLevel: "5",
                                khLevel: "៥",
                                enQuestion: "What is Khmer New Year's Eve?",
                                khQuestion:
                                    '៧.តើបុណ្យចូលឆ្នាំខ្មែរគឺជាបុណ្យអ្វី?',
                                opOne: ["បុណ្យជាតិកូរ៉េ", false],
                                opTwo: ["បុណ្យជាតិវៀតណាម", false],
                                opThree: ["បុណ្យជាតិខ្មែរ", true],
                                opFour: ["បុណ្យជាតិអឺរ៉ុប", false],
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
                color1: Color(0xFF5C99FF),
                color2: Color(0xFF001B48),
                engTxt: "Level 6",
                khTxt: "កម្រិត​ ៦",
                nextPage: StartQuestionWidget(
                  level: "៦",
                  nextPage: QuizeWidget(
                    enLevel: "6",
                    khLevel: "៦",
                    enQuestion:
                        'Which of the vowel signs in the options below is written "above" the consonant?  ',
                    khQuestion:
                        '១. តើសញ្ញាស្រៈណាមួយក្នុងចំណោមជម្រើសខាងក្រោម ដែលត្រូវសរសេរនៅ «ខាងលើ» ព្យញ្ជនៈ?',
                    opOne: ["ិ", true],
                    opTwo: ["ា", false],
                    opThree: ["ុ", false],
                    opFour: ["ៅ", false],
                    nextPage: QuizeWidget(
                      enLevel: "6",
                      khLevel: "៦",
                      enQuestion: 'What does the Khmer ៩ represent?',
                      khQuestion: '២. តើលេខខ្មែរ ៩ ស្មើនឹងលេខប៉ុន្មាន?',
                      opOne: ["6", false],
                      opTwo: ["5", false],
                      opThree: ["9", true],
                      opFour: ["12", false],

                      nextPage: QuizeWidget(
                        enLevel: "6",
                        khLevel: "៦",
                        enQuestion: 'What are synonyms mean?',
                        khQuestion: '៣. តើន័យដូចមានន័យដូចម្ដេច?',
                        opOne: [
                          "ន័យដូច គឺជាពាក្យទាំងឡាយណា ដែលមានន័យដូចឬប្រហាក់ប្រហែលគ្នាតែសំណេរ និង សំណួរពុំដូចគ្នាទេ។ Synonyms is a word that has the same meaning as another word.​",
                          true,
                        ],
                        opTwo: [
                          "ន័យដូច គឺជាពាក្យដែលមានន័យផ្ទុយគ្នា។ Synonyms are words that have opposite meanings.",
                          false,
                        ],
                        opThree: [
                          "ន័យដូច គឺជាពាក្យដែលមានសំណេរដូចគ្នា តែន័យខុសគ្នា។ Synonyms are words that are spelled the same but have different meanings.",
                          false,
                        ],
                        opFour: [
                          "ន័យដូច គឺជាពាក្យដែលប្រើសម្រាប់បញ្ជាក់លក្ខណៈរបស់នាម។ Synonyms are words used to describe the characteristics of nouns.",
                          false,
                        ],

                        nextPage: QuizeWidget(
                          enLevel: "6",
                          khLevel: "៦",
                          enQuestion: 'What is a synonym of "Mother"',
                          khQuestion: '៤. តើន័យដូចនឹងពាក្យ "ម្តាយ" គឺអ្វី?',
                          opOne: ["មីង", false],
                          opTwo: ["យាយ", false],
                          opThree: ["ប៉ា", false],
                          opFour: ["ម៉ាក់", true],
                          nextPage: QuizeWidget(
                            enLevel: "6",
                            khLevel: "៦",
                            enQuestion:
                                'what is the name of this fruit in Khmer?',
                            khQuestion: '៥. តើផ្លែឈើខាងលើជាផ្លែអ្វី?',
                            opOne: ["ចេក", false],
                            opTwo: ["ម្នាស់", true],
                            opThree: ["ល្ហុង", false],
                            opFour: ["ប៉ោម", false],
                            img: './assets/images/pineapple.png',
                            nextPage: QuizeWidget(
                              enLevel: "6",
                              khLevel: "៦",
                              enQuestion:
                                  'What does "តើគោលដៅរបស់អ្នកគឺអ្វី?" mean?',
                              khQuestion:
                                  '៦. តើប្រយោគ "តើគោលដៅរបស់អ្នកគឺអ្វី?" មានន័យដូចម្ដេច?',
                              opOne: [
                                "What are your plans for the future?",
                                false,
                              ],
                              opTwo: ["What are your goals?", true],
                              opThree: ["What are your dreams?", false],
                              opFour: ["I plan to learn new skills.", false],
                              nextPage: QuizeWidget(
                                enLevel: "6",
                                khLevel: "៦",
                                enQuestion:
                                    'What are your plans for the future?',
                                khQuestion: '៧. តើពាក្យ​ Order មានន័យដូចម្ដេច?',
                                opOne: ["បញ្ជីមុខម្ហូប", false],
                                opTwo: ["អាហារ", false],
                                opThree: ["បញ្ជាទិញ", true],
                                opFour: ["បាយ", false],

                                nextPage: QuizeWidget(
                                  enLevel: "6",
                                  khLevel: "៦",
                                  enQuestion:
                                      'What is Independence Day called in Khmer?',
                                  khQuestion:
                                      '៨.តើបុណ្យIndependence day ហៅថាអ្វី?',
                                  opOne: ["ទិវាពលកម្ម", false],
                                  opTwo: ["បុណ្យឯករាជ្យជាតិ", true],
                                  opThree: ["ពិសាខបូជា", false],
                                  opFour: ["បុណ្យចូលឆ្នាំថ្មី", false],

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
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFF3C88),
                color2: Color(0xFF731439),
                engTxt: "Level 7",
                khTxt: "កម្រិត​ ៧",
                nextPage: StartQuestionWidget(
                  level: "៧",
                  nextPage: QuizeWidget(
                    enLevel: "6",
                    khLevel: "៦",
                    enQuestion:
                        'Which owel sign is written "below" the consonant?',
                    khQuestion:
                        '១. តើសញ្ញាស្រៈណាមួយ ដែលត្រូវសរសេរនៅ «ខាងក្រោម» តួព្យញ្ជនៈ?',
                    opOne: ["ី", false],
                    opTwo: ["ូ", true],
                    opThree: ["ល", false],
                    opFour: ["ៀ", false],
                    nextPage: QuizeWidget(
                      enLevel: "6",
                      khLevel: "៦",
                      enQuestion: 'What is an imperative sentence?',
                      khQuestion: '២.​តើល្បះបញ្ជាមានន័យដូចម្ដេច?',
                      opOne: [
                        "ល្បះបញ្ជា ជាល្បះសម្រាប់សួរសំណួរ។ An imperative sentence is a sentence used to ask questions.",
                        false,
                      ],
                      opTwo: [
                        "ល្បះបញ្ជា ជាល្បះសម្រាប់ប្រៀបធៀបមនុស្ស ឬវត្ថុពីរ។ An imperative sentence is a sentence used to compare two people or things.",
                        false,
                      ],
                      opThree: [
                        "ល្បះបញ្ជា ជាល្បះសម្រាប់ប្រើបង្គាប់ ឱ្យដំបូន្មាន ធ្វើសំណូមពរ និងអង្វរករ។ An imperative sentence is a sentence that gives a command, makes a request, gives instructions, or offers advice.",
                        true,
                      ],
                      opFour: [
                        "ល្បះបញ្ជា ជាល្បះសម្រាប់ប្រាប់ព័ត៌មាន ឬពិពណ៌នាអំពីអ្វីមួយ។ An imperative sentence is a sentence used to state facts or describe something.",
                        false,
                      ],
                      nextPage: QuizeWidget(
                        enLevel: "6",
                        khLevel: "៦",
                        enQuestion: 'Which sentence shows a future plan?',
                        khQuestion: '៧.តើប្រយោគណាមួយបង្ហាញពីផែនការនាពេលអនាគត? ',
                        opOne: ["ខ្ញុំញ៉ាំបាយរាល់ថ្ងៃ។", false],
                        opTwo: ["ខ្ញុំចង់រៀនភាសាចិននៅឆ្នាំក្រោយ", true],
                        opThree: ["ខ្ញុំកំពុងមើលទូរទស្សន៍។", false],
                        opFour: ["ខ្ញុំចូលចិត្តផ្លែឈើ។", false],
                        nextPage: QuizeWidget(
                          enLevel: "6",
                          khLevel: "៦",
                          enQuestion: 'Which two days are the weekend?',
                          khQuestion: '៤.តើថ្ងៃពីរណាដែលជាថ្ងៃចុងសប្ដាហ៍?',
                          opOne: ["ថ្ងៃចន្ទ និងថ្ងៃអង្គារ", false],
                          opTwo: [" ថ្ងៃពុធ និងថ្ងៃព្រហស្បតិ៍", false],
                          opThree: [" ថ្ងៃសៅរ៍ និងថ្ងៃអាទិត្យ", true],
                          opFour: ["ថ្ងៃព្រហស្បតិ៍ និងថ្ងៃសុក្រ", false],
                          nextPage: QuizeWidget(
                            enLevel: "6",
                            khLevel: "៦",
                            enQuestion:
                                'What is the name of this fruit in Khmer?   ',
                            khQuestion: '៥. តើផ្លែឈើខាងលើជាផ្លែអ្វី?',
                            opOne: ["ចេក", false],
                            opTwo: ["ម្នាស់", false],
                            opThree: ["ឪឡឹក", true],
                            opFour: ["ប៉ោម", false],
                            img: './assets/images/watermelon.png',

                            nextPage: QuizeWidget(
                              enLevel: "6",
                              khLevel: "៦",
                              enQuestion:
                                  'What is the image called in Khmer?   ',
                              khQuestion: '៦. តើរូបខាងលើជាអ្វី?',
                              opOne: ["ចេក", false],
                              opTwo: ["ម្នាស់", false],
                              opThree: ["ទឹក", false],
                              opFour: ["បាយ", true],
                              img: './assets/images/rice.png',

                              nextPage: QuizeWidget(
                                enLevel: "6",
                                khLevel: "៦",
                                enQuestion:
                                    'What is khmer new year day sound in Khmer?',
                                khQuestion:
                                    '៧.តើបុណ្យ khmer New year ហៅថាអ្វី?',
                                opOne: ["bon chol chnam thmey", true],
                                opTwo: ["bon ekreach cheat", false],
                                opThree: ["Tuva Roth Tammanh", false],
                                opFour: ["bon Phchum Ben", false],
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
                color1: Color(0xFFB8F8FE),
                color2: Color(0xFF003C42),
                engTxt: "Coming soon",
                khTxt: "Level 8",
                nextPage: ComingZoonWidget(),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFEEEB37),
                color2: Color(0xFFB9B306),
                engTxt: "Coming soon",
                khTxt: "Level 9",
                nextPage: ComingZoonWidget(),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
