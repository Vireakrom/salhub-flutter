import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';


class FruitPage extends StatelessWidget {
  const FruitPage({super.key});

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
              image: AssetImage('assets/images/home_background.jpg'),
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
                    "ផ្លែឈើ",
                    style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Fruit",
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
                                "Jack fruit",
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
                                "phle Khnor",
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
                                "ផ្លែខ្នុរ",
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
                                "Logan",
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
                                "phle mieh",
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
                                "ផ្លែមៀន",
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
                                "Guava",
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
                                "phle trabek",
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
                                "ផ្លែត្របែក",
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
                                "Banana",
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
                                "phle chek",
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
                                "ផ្លែចេក",
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
                                "Mango",
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
                                "phle svay",
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
                                "ផ្លែស្វាយ",
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
                                "Pineapple",
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
                                "phle mneasa",
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
                                "ផ្លែម្នាស់",
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
                                "Watermelom",
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
                                "phle auloek",
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
                                "ផ្លែឪឡឹក",
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
                                  Text("Dourain",
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
                                  Text("phle thu ren",
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
                                  Text("ផ្លែធុរេន",
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
                                  Text("Coconut",
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
                                  Text("phle daung",
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
                                  Text("ផ្លែដូង",
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
                                "Apple",
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
                                "phle baom",
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
                                "ផ្លែប៉ោម",
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
                                "Orange",
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
                                "phle Krauch",
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
                                "ផ្លែក្រូច",
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
                                "Lychee",
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
                                "phle koulen",
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
                                "ផ្លែគូលែន",
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
                                "Pear",
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
                                "phle sari",
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
                                "ផ្លែសារី",
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
                                "fig",
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
                                "phlea lvea",
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
                                "ផ្លែល្វា",
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
