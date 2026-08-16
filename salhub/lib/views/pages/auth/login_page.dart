import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:salhub/data/notfiers.dart';
import 'package:salhub/views/pages/auth/reset_password_page.dart';
import 'package:salhub/views/pages/auth/sign_up_page.dart';
import 'package:salhub/views/widget_tree.dart';
import 'package:salhub/views/widgets/salhub_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPw = TextEditingController();
  String errorMessage = '';

  bool hidden = true;
  @override
  void initState() {
    hidden = true;
    super.initState();
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPw.dispose();
    super.dispose();
  }

  void signIn() async {
    try {
      await authService.value.signIn(
        email: controllerEmail.text,
        password: controllerPw.text,
      );
      goToWidgetTree();
    } on FirebaseException catch (e) {
      setState(() {
        errorMessage = e.message ?? "There is an error.";
      });
    }
  }

  void goToWidgetTree() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WidgetTree()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SalhubWidget(),
                SizedBox(height: 20),
                Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Text(
                  "Login Now",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
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

                SizedBox(height: 20),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Forget password?",
                        style: TextStyle(
                          color: Color(0xFF3F2514),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),

                OutlinedButton(
                  onPressed: () {
                    signIn();
                  },
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3F2514),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have a account?",
                      style: TextStyle(color: Color(0xFF000000), fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xFF3F2514),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text(errorMessage, style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
