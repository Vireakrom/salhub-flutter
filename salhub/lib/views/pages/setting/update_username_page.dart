import 'package:flutter/material.dart';
import 'package:salhub/data/notfiers.dart';

class UpdateUsernamePage extends StatefulWidget {
  const UpdateUsernamePage({super.key});

  @override
  State<UpdateUsernamePage> createState() => _UpdateUsernamePageState();
}

class _UpdateUsernamePageState extends State<UpdateUsernamePage> {
  final userNameController = TextEditingController();
  final _userFormKey = GlobalKey<FormState>();
  String errorMessage = '';
  bool _isLoading = false;
  @override
  void initState() {
    userNameController.text =
        authService.value.currentUser!.displayName ?? "Username";

    super.initState();
  }

  @override
  void dispose() {
    userNameController.dispose();
    super.dispose();
  }

  void save() async {
    if (_isLoading) return;
    setState(() {
      _isLoading = true;
      errorMessage = '';
    });

    try {
      await authService.value.updateUsername(username: userNameController.text);
      if (mounted) Navigator.pop(context);
    } catch (e) {
      errorMessage = '$e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Form(
                key: _userFormKey,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.person),
                    ),
                  ),

                  controller: userNameController,
                  onEditingComplete: () => setState(() {}),
                  validator: (value) {
                    if (value == null) {
                      return "Pleas enter user name";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(errorMessage, style: TextStyle(color: Colors.red)),

              SizedBox(height: 50),
              OutlinedButton(
                onPressed: () {
                  if (_userFormKey.currentState!.validate()) {
                    save();
                  }
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  backgroundColor: Color(0xFFD9D9D9),
                ),
                child: _isLoading
                    ? SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          color: Color(0xFF3F2514), // Matches your theme color
                        ),
                      )
                    : Padding(
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
