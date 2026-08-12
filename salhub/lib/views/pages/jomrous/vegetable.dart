import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/pages/jomrous/jomrous_page.dart';


class VegetablePage extends StatelessWidget {
  const VegetablePage({super.key});

  @override
  Widget build(BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
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
                SizedBox(width: 10,),
                Text(
                  "Vegetable",
                  style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
                ),
              ],
            ),  
            Table(
              border: TableBorder.all(color: const Color.fromARGB(255, 98, 90, 90)),
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
                        padding: EdgeInsets.all(8.0),
                        child: Text("អង់គ្លេស",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFFF6d3f21),
                        ),
                        textAlign: .center,
                        ),
                      ),
                      
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("សំលេង",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFFF6d3f21),
                        ),
                        textAlign: .center,
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("ខ្មែរ",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFFF6d3f21),
                        ),
                        textAlign: .center,
                        ),
                        
                        
                      ),
                      
                    ),
                    
                     
                  ]
                )
              ],
            )
          ],
          
        ),
      ),
    );
  }
}
