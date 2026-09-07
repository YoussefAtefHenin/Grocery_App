import 'package:flutter/material.dart';
import 'package:grocery_app/screens/bottom_nav_bar_screen.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.01),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 28.42),
                  Center(child: Image.asset("assets/images/carrot.png")),
                  SizedBox(height: 100.21),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff030303),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Enter your credentials to continue",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomTextField(
                    labelText: "Username",
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Enter your username";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
                    labelText: "Email",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a valid email";
                      }
                      final emailRegex = RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      );
                      if (!emailRegex.hasMatch(value)) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
                    labelText: "Password",
                    obscureText: true,
                    suffix: Icon(Icons.visibility_off),
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      if (!RegExp(r'[A-Z]').hasMatch(value)) {
                        return "Password must contain an uppercase letter";
                      }
                      if (!RegExp(r'[a-z]').hasMatch(value)) {
                        return "Password must contain a lowercase letter";
                      }
                      if (!RegExp(r'[0-9]').hasMatch(value)) {
                        return "Password must contain a number";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "By continuing you agree to our ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                      Text(
                        "Terms of Service",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff53B175),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "and ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                      Text(
                        "Privacy Policy.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff53B175),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    text: "Sing Up",
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomNavBarScreen(),
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff030303),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff53B175),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
