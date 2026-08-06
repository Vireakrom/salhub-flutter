import 'package:flutter/material.dart';
import 'package:salhub/views/pages/login_page.dart';
import 'package:salhub/views/widgets/salhub_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPw = TextEditingController();
  bool hidden = true;

  @override
  void initState() {
    hidden = true;
    super.initState();
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerUsername.dispose();
    controllerPw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SalhubWidget(),
              SizedBox(height: 20),
              Text(
                "Personal Information",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(Icons.person),
                  ),
                ),

                controller: controllerUsername,
                onEditingComplete: () => setState(() {}),
              ),
              SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(Icons.email),
                  ),
                ),

                controller: controllerEmail,
                onEditingComplete: () => setState(() {}),
              ),
              SizedBox(height: 20),

              TextField(
                obscureText: hidden,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: IconButton(
                      onPressed: () => setState(() {
                        hidden = !hidden;
                      }),
                      icon: Icon(
                        hidden == true
                            ? Icons.visibility_off
                            : Icons.remove_red_eye,
                      ),
                    ),
                  ),
                ),

                controller: controllerPw,
                onEditingComplete: () => setState(() {}),
              ),

              SizedBox(height: 50),

              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F2514),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
