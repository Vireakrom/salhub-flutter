import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class VegetablePage extends StatelessWidget {
  const VegetablePage({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
              image: AssetImage('assets/images/sc_background'),
              fit: BoxFit.cover,

              colorFilter: ColorFilter.mode(
                
                Colors.white.withValues(alpha: 0.6),
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
                    "បន្លែ",
                    style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Vegetable",
                    style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "អង់គ្លេស",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "English",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "សំលេង",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Sound",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ខ្មែរ",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Khmer",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Cabbage",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "spaikdoa",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ស្ពៃក្ដោប",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Spinach",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "spai khmao",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ស្ពៃខ្មៅ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Broccoli",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "bro-kho-li",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ប្រូខូលី",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Cauliflower",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "phka khtna",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ផ្កាខាត់ំណា",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Tomato",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "peng pos",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ប៉េងប៉ោះ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Cucumber",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "trasak",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ត្រសក់",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Pumpkin",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "lpov",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ល្ពៅ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                    border: TableBorder.all(color: const Color.fromARGB(223, 171, 152, 8),),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      const TableRow(
                        decoration: BoxDecoration(
                          color:  Color.fromARGB(255, 239, 231, 152),
                        ),
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text("Garlic",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color(0xFFF6d3f21),
                                  ),
                                  textAlign: TextAlign.center,
                                  ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text("khtum sor",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color(0xFFF6d3f21),
                                  ),
                                  textAlign: TextAlign.center,
                                  ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text("ខ្ទឹមស",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color(0xFFF6d3f21),
                                  ),
                                  textAlign: TextAlign.center,
                                  ),
                            ],
                          ),
                        ),
                      ),
                    ]
                  )
                ],
              ),
              Table(
                    border: TableBorder.all(color: const Color.fromARGB(223, 171, 152, 8),),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      const TableRow(
                        decoration: BoxDecoration(
                          color:  Color.fromARGB(255, 239, 231, 152),
                        ),
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text("Chili",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color(0xFFF6d3f21),
                                  ),
                                  textAlign: TextAlign.center,
                                  ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text("mtes",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color(0xFFF6d3f21),
                                  ),
                                  textAlign: TextAlign.center,
                                  ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text("ម្ទេស",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0xFFF6d3f21),
                                  ),
                                  textAlign: TextAlign.center,
                                  ),
                            ],
                          ),
                        ),
                      ),
                    ]
                  )
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Corn",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "phout",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ពោត",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Mashroom",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "phout",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ផ្សិត",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Celery",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "se-le-ri",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "សេលេរី",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Bitter melon",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "mreah",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ម្រះ",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "Wax gourd",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "tralach",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "ត្រឡាច",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFFF6d3f21),
                                ),
                                textAlign: TextAlign.center,
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
