import 'package:flutter/material.dart';

class WClass extends StatefulWidget {
  const WClass({super.key});

  @override
  State<WClass> createState() => _WClassState();
}

class _WClassState extends State<WClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCDE4A3),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // 1. Base Layer: The Main Header Content Layout
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Hero(
                      tag: 'HomeHero',
                      child: Image.asset('./assets/images/home_background.png'),
                    ),
                    FittedBox(
                      child: Column(
                        children: [
                          Text(
                            "សូមស្វាគមន៍",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color(0xFF6D3F21),
                            ),
                          ),
                          Text(
                            "រៀនភាសាខ្មែរ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 36,
                              color: Color(0xFF608B04),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // 2. Middle Layer: The Cream Grid Container
                // We use a clean top padding margin here instead of Transform.translate
                // to make sure layout positioning calculations stay perfectly accurate
                Container(
                  margin: const EdgeInsets.only(
                    top: 200,
                  ), // Adjust this value to shift your container up/down
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFDF0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[200],
                        child: const Text('Heed not the rabble'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[300],
                        child: const Text('Sound of screams but the'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[400],
                        child: const Text('Who scream'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[500],
                        child: const Text('Revolution is coming...'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[600],
                        child: const Text('Revolution, they...'),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // 3. Top Layer: Logo positioned at the bottom of the Stack so it renders on top
            Positioned(
              right: 5,
              top:
                  170, // explicitly pin your logo relative to your grid overlap line
              child: Image.asset(
                './assets/images/background_logo.png',
                width: 100, // Explicit size sizing helps keep it stable
              ),
            ),
          ],
        ),
      ),
    );
  }
}
