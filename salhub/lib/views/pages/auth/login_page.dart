import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:salhub/data/notfiers.dart';
import 'package:salhub/views/admin_widget_tree.dart';
import 'package:salhub/views/pages/auth/app_loading_page.dart';
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
  final _signInFormKey = GlobalKey<FormState>();

  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPw = TextEditingController();
  String errorMessage = '';
  bool _isLoading = false;
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
    if (_isLoading) return;
    setState(() {
      _isLoading = true;
      errorMessage = '';
    });
    try {
      await authService.value.signIn(
        email: controllerEmail.text,
        password: controllerPw.text,
      );
      if (mounted) goToWidgetTree();
    } on FirebaseAuthException catch (e) {
      if (mounted) {
        setState(() {
          errorMessage = e.message ?? 'There is an error from firebase auth.';
        });
      }
    } on FirebaseException catch (e) {
      if (mounted) {
        setState(() {
          errorMessage = e.message ?? "There is an error.";
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          errorMessage =
              "You may not be able to login anymore due to retricted from admin.";
        });
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void goToWidgetTree() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return FutureBuilder<bool>(
            future: authService.value.isAdmin(),
            builder: (context, adminSnapshot) {
              if (adminSnapshot.connectionState == ConnectionState.waiting) {
                return const AppLoadingPage();
              }
              if (adminSnapshot.data == true) {
                return const AdminWidgetTree();
              } else {
                return const WidgetTree();
              }
            },
          );
        },
      ),
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

                Form(
                  key: _signInFormKey,
                  child: Column(
                    children: [
                      TextFormField(
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
                        validator: (value) {
                          const pattern =
                              r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
                              r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
                              r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
                              r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
                              r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
                              r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
                              r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
                          final regex = RegExp(pattern);

                          if (value == '') {
                            return "Please enter email.";
                          }
                          if (!regex.hasMatch(value.toString())) {
                            return "Please enter a valid email.";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
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
                        validator: (value) {
                          if (value == '') {
                            return 'Please enter password';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
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
                Text(errorMessage, style: TextStyle(color: Colors.red)),

                SizedBox(height: 50),

                OutlinedButton(
                  onPressed: () {
                    if (_signInFormKey.currentState!.validate()) {
                      _isLoading ? null : signIn();
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _isLoading
                        ? SizedBox(
                            height: 24,
                            width: 24,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.5,
                              color: Color(
                                0xFF3F2514,
                              ), // Matches your theme color
                            ),
                          )
                        : Text(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
