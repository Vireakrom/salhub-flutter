import 'package:flutter/material.dart';
import 'package:salhub/data/notfiers.dart';
import 'package:salhub/views/pages/auth/logout_page.dart';
import 'package:salhub/views/pages/setting/update_username_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./assets/images/home_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      "assets/images/user_profile.png",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        authService.value.currentUser!.displayName ??
                            "Username",
                        style: TextStyle(fontSize: 21),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UpdateUsernamePage(),
                            ),
                          ).then((_) {
                            setState(() {});
                          });
                        },
                        icon: Icon(Icons.edit, size: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.language,
                              size: 40.0,
                              color: Colors.lightGreenAccent,
                            ),
                            Column(
                              mainAxisAlignment: .center,
                              children: [
                                Text("ភាសា", style: TextStyle(fontSize: 20)),
                                Text(
                                  "Language",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.notifications,
                              size: 40.0,
                              color: Colors.lightGreenAccent,
                            ),
                            Column(
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  "កាជូនដំណឹង",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Notification",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.volume_up,
                              size: 40.0,
                              color: Colors.lightGreenAccent,
                            ),
                            Column(
                              mainAxisAlignment: .center,
                              children: [
                                Text("សំឡេង", style: TextStyle(fontSize: 20)),
                                Text("Sound", style: TextStyle(fontSize: 15)),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.dark_mode,
                              size: 40.0,
                              color: Colors.lightGreenAccent,
                            ),
                            Column(
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  "របៀបងងឹត",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Dark mode",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogoutPage()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      backgroundColor: Color(0xFFD9D9D9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Logout",

                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3F2514),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
