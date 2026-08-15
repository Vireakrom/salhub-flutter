import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class TimePage extends StatelessWidget {
  const TimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ពេវេលា",
                    style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Time",
                    style: TextStyle(fontSize: 16, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "ថ្ញៃក្នុងមួយសប្ដាហ័",
                    style: TextStyle(fontSize: 22, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "The day of the week",
                    style: TextStyle(fontSize: 14, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "អង់គ្លេស",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Enlish",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "សំលេង",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Sound",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខ្មែរ",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Khmer",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Monday",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "thngai chan",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
 ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ថ្ងៃចន្ទ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Tuesday",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "thngai angkea",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ថ្ងៃអង្គារ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                       color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Wednesday",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "thngai puth",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ថ្ងៃពុធ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Thursday",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "thngai prohos",
                                style: TextStyle(
                                   fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ថ្ងៃព្រហស្បតិ៍",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Friday",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "thngai sok",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ថ្ងៃសុក្រ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Saturday",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "thngai sao",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ថ្ងៃសៅរ៍",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Sunday",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "thngai atit",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ថ្ងៃអាទិត្យ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Text(
                    "ខែក្នុងមួយឆ្នាំ",
                    style: TextStyle(fontSize: 22, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Month of the of the Year",
                    style: TextStyle(fontSize: 14, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "អង់គ្លេស",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "English",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "សំលេង",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Sound",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខ្មែរ",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Khmer",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "January",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "khea makara",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
 ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែមករា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "February",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "khea kompeak",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែកុម្ភៈ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                       color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "March",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "khea mina",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែមីនា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "April",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "khea mesa",
                                style: TextStyle(
                                   fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែមេសា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "June",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "khea mithona",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែមិថុនា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "July",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "khea kakada",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែកក្កដា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "August",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "khae seiha",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែសីហា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                          Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Septemper",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "khae seiha",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែកញ្ញា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                          Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "October",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "khea tola",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែតុលា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                          Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "November",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "khae seiha",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែសីហា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                          Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "September",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "khae khea vicheka",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែវិច្ឆិកា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                                        Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "December",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "khaethnou",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខែធ្នូ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Text(
                    "រាសីចក្រខ្មែរ",
                    style: TextStyle(fontSize: 22, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Khmer Zodic Year",
                    style: TextStyle(fontSize: 14, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "អង់គ្លេស",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "English",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "សំលេង",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Sound",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ខ្មែរ",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Khmer",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Rat",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "chnam chot",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
 ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំជូត",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Ox",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "chnam chhlov",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំឆ្លូវ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                       color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Tiger",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "chnam khal",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំខាល",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Rabbit",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "chnam thos",
                                style: TextStyle(
                                   fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំថោះ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Dragon",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "chnam rong",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំរោង ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Snake",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "chnam msanh",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំម្សាញ់",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Horse",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "chnam momey",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំមមី",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                          Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Goat",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "chnam momea",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំមមែ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                          Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Monkey",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "chnam cok",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំវក",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                          Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Rooster",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "chnam roka",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំរកា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                          Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Dog",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "chynam chor",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំច",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                                        Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(223, 171, 152, 8),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 231, 152),
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Pig",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Text(
                                "chnam chor",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "ឆ្នាំកុរ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}