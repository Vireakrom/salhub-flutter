import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class BonjeatPage extends StatelessWidget {
  const BonjeatPage({super.key});

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
                    "បុណ្យជាតិ",
                    style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "National Holiday",
                    style: TextStyle(fontSize: 16, color: Color(0xFF790303)),
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
                                  fontSize: 24,
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
                                "New Year's day",
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
                                "bon jol chnam tmey",
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
                                "បុណ្យចូលឆ្នាំថ្មី",
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
                                "Independence Day",
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
                                "bon ekreach cheat",
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
                                "បុណ្យឯករាជ្យជាតិ",
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
                                "Constitution Day",
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
                                "tivea roth thommanh",
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
                                "ទិវារដ្ឋធម្មនុញ្ញ",
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
                                "International Labor Day",
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
                                "tivea polakam antorcheat",
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
                                "ទិវាពលកម្មអន្តរជាតិ",
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
                                "Victory over Genocide Day",
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
                                "tivea chey chomneh ler robob pralay poch sas",
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
                                "ទិវាជ័យជម្នះលើរបបប្រល័យពូជសាសន៍",
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
                                "Visak Bochea Day",
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
                                "pithi bon visak bochea",
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
                                "ពិធីបុណ្យវិសាខបូជា",
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
                                "Royal Ploughing Ceremony",
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
                                "preah reach pithi chrot preah nongkol",
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
                                "ព្រះរាជពិធីច្រត់ព្រះនង្គ័ល",
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
                                "King's Birthday",
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
                                "preah reach pithi bon chamroen preah chon",
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
                                "ព្រះរាជពិធីបុណ្យចម្រើនព្រះជន្ម",
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
                                "Queen Mother's Birthday",
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
                                "preah reach pithi bon chamroen preah chon preah maha ksatrey",
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
                                "ព្រះរាជពិធីបុណ្យចម្រើនព្រះជន្ម ព្រះមហាក្សត្រី",
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
                                " Water Festival",
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
                                "preah reach pithi bon om tuk",
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
                                "ព្រះរាជពិធីបុណ្យអុំទូក",
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
                                "Pchum Ben",
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
                                "bon phchum ben",
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
                                "បុណ្យភ្ជុំបិណ្ឌ",
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
