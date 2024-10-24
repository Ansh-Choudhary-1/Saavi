import 'package:flutter/material.dart';
import 'package:saavi/components/button.dart';
import 'package:saavi/components/input_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Forgot Password',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF232323),
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Please enter your email address. You will receive a link to create a new password via email.',
              style: TextStyle(
                color: Color(0xFF80869A),
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const InputField(
              isPassword: false,
              labelText: "Email",
              type: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20,
            ),
            Button(btnName: "send", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
