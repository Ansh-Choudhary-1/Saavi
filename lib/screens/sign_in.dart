import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:saavi/components/button.dart';
import 'package:saavi/components/input_field.dart';
import 'package:saavi/screens/first_launch/page1.dart';
import 'package:saavi/screens/forgot_password.dart';
import 'package:saavi/screens/main_screen/navigator.dart';
import 'package:saavi/screens/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isFirstLaunch = true;

  Future<void> _checkFirstLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool isFirstRun = prefs.getBool('firstRun') ?? true; // Check if first run

    if (isFirstRun) {
      prefs.setBool(
          'firstRun', false); // Update flag to indicate app is not new anymore
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Page1()));
    }
  }

  // This widget is the root of your application.
  @override
  void initState() {
    super.initState();
    _checkFirstLaunch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 125, 10, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w900,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const InputField(
              isPassword: false,
              labelText: "Email",
              type: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20,
            ),
            const InputField(
              isPassword: true,
              labelText: "Password",
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()));
                },
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color(0xFFD9389E),
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Button(
              btnName: "Sign In",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const NavigatorHelper()));
              },
            ),
            const Divider(
              height: 40,
              color: Colors.black,
            ),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Don’t have an account  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                    text: 'Sign up',
                    style: const TextStyle(
                      color: Color(0xFFDE3C87),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset("assets/images/google.png"),
                  ),
                ),
                Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset("assets/images/facebook.png"),
                  ),
                ),
                Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset("assets/images/apple.png"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
