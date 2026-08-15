import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

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
                    "ភោជនីយដ្ធាន",
                    style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Resturants",
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
                                "Menu",
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
                                "Banhchi mouk mhoub",
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
                                "បញ្ជីមុខម្ហូប",
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
                                "Food",
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
                                "Ah ha",
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
                                "អាហារ",
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
                                "Table",
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
                                "Toh",
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
                                "តុ",
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
                                "Chair",
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
                                "Kao ey",
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
                                "កៅអី",
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
                                "Bill",
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
                                "Vikkaybat",
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
                                "វិក្ក័យបត្រ",
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
                                "Order",
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
                                "banhcheatenh",
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
                                "បញ្ជីទិញ",
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
                                "Fork",
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
                                "Som",
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
                                "សម",
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
                                  Text("Spoon",
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
                                  Text("Sleabprea",
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
                                  Text("ស្លាបព្រា",
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
                                  Text("Rice",
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
                                  Text("Bay",
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
                                  Text("បាយ",
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
                                "Plate",
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
                                "Chan",
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
                                "ចាន",
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
                                "Glass",
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
                                "Kao",
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
                                "កែវ",
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
                                "Knife",
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
                                "Kambit",
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
                                "កាំបិត",
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
                                "Chopstick",
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
                                "Chang kauh",
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
                                "ចង្កឺះ",
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
                                "Bowl",
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
                                "Chan Kom",
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
                                "ចានគោម",
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
