import 'package:flutter/material.dart';
import 'package:salhub/views/pages/jomrous/vegetable.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';



class JomrousPage extends StatelessWidget {
  const JomrousPage({super.key});

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
                  "ភាសាចម្រុះ",
                  style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10,),
                Text(
                  "General",
                  style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
                ),
              ],
            ),
            
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VegetablePage()),
                );
              },
              child: Center(
              child: Container(
                width: screenWidth*0.8,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 231, 152),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFF7BE2D), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                
                    children: [
                      Text(
                        "បន្លែ",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF790303),
                        ),
                      ),
                      Text(
                        "Vegetable",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF790303),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VegetablePage()),
                );
              },
              child: Container(
                width: screenWidth*0.8,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 231, 152),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFF7BE2D), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                
                    children: [
                      Text(
                        "ផ្លែឈើ",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF790303),
                        ),
                      ),
                      Text(
                        "Fruit",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF790303),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Placeholder()),
                );
              },
              child: Container(
                width: screenWidth*0.8,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 231, 152),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFF7BE2D), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                
                    children: [
                      Text(
                        "ពណ៏",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF790303),
                        ),
                      ),
                      Text(
                        "Colors",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF790303),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Placeholder()),
                );
              },
              child: Container(
                width: screenWidth*0.8,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 231, 152),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFF7BE2D), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                
                    children: [
                      Text(
                        "ផ្ទះ",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF790303),
                        ),
                      ),
                      Text(
                        "Houses",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF790303),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Placeholder()),
                );
              },
              child: Container(
                width: screenWidth*0.8,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 231, 152),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFF7BE2D), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                
                    children: [
                      Text(
                        "ភោជនីយដ្ធាន",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF790303),
                        ),
                      ),
                      Text(
                        "Resturants",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF790303),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Placeholder()),
                );
              },
              child: Container(
                width: screenWidth*0.8,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 231, 152),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFF7BE2D), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                
                    children: [
                      Text(
                        "ពេលវេលា",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF790303),
                        ),
                      ),
                      Text(
                        "Times",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF790303),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Placeholder()),
                );
              },
              child: Container(
                width: screenWidth*0.8,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 231, 152),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFF7BE2D), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                
                    children: [
                      Text(
                        "ពណ៏",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF790303),
                        ),
                      ),
                      Text(
                        "Colors",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF790303),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
             
          ],
        ),
      ),
    );
  }
}
