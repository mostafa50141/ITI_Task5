import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'blue_container.dart';
import 'custom_button.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlueContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 1),
            const Text(
              "أدخل رمز التحقق OTP",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "لقد ارسلنا الكود الخاص بك ",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const Text(
              " الي 000*****010",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const Text(
              "سينتهي هذ الكود  في 00:30",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 12),
            OtpTextField(numberOfFields: 6, showFieldAsBox: true, filled: true),
            const Spacer(flex: 1),
            CustomButton(
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
              text: "تأكيد",
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
