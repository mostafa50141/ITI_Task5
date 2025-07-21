import 'otp_screen.dart';
import 'blue_container.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';
import 'signup_screen.dart';
import 'custom_text_row.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlueContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 1),
            const Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(flex: 1),
            const CustomTextFormField(
              hintText: "Email",
              prefixIcon: Icons.email,
            ),
            const CustomTextFormField(
              hintText: "Password",
              prefixIcon: Icons.password,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OtpScreen()),
                  );
                },
                child: const Text(
                  "Forgot Your Password ?",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            const Spacer(flex: 1),
            CustomButton(text: "Login", color: Colors.black, onPressed: () {}),
            const SizedBox(height: 10),
            TextRow(
              unClickableText: "Don't Have Account?  ",
              clickableText: "Sign Up",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupScreen()),
                );
              },
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
