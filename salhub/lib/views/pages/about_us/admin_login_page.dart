import 'package:flutter/material.dart';
import 'package:salhub/views/pages/auth/reset_password_page.dart';
import 'package:salhub/views/pages/about_us/admin_dashboard.dart';
import 'package:salhub/views/widgets/salhub_widget.dart';


class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({super.key});

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPw = TextEditingController();

  bool hidden = true;

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPw.dispose();
    super.dispose();
  }
  void goToAdminDashboard() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const AdminDashboard(),
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
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              SizedBox(height: 40),

              Text(
                  "Admin Login",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              SizedBox(height: 20),
                TextField(
                  controller: controllerEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    suffixIcon: const Icon(Icons.email),
                  ),
                ),

                SizedBox(height: 20),
                TextField(
                  controller: controllerPw,
                  obscureText: hidden,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidden = !hidden;
                        });
                      },
                      icon: Icon(
                        hidden
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ResetPasswordPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Color(0xFF3F2514),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 40),
                OutlinedButton(
                  onPressed: goToAdminDashboard,
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F2514),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}