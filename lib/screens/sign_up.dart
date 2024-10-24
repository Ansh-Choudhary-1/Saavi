import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:saavi/components/button.dart';
import 'package:saavi/components/input_field.dart';
import 'package:saavi/screens/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isCivillan = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 75, 10, 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Sign Up',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Checkbox(
                      value: isCivillan,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      shape: const CircleBorder(),
                      onChanged: (bool? val) {
                        setState(() {
                          isCivillan = true;
                        });
                      }),
                  const Card(
                    elevation: 0,
                    color: Color.fromRGBO(94, 74, 207, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: Text(
                        'CIVILIAN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Checkbox(
                      value: !isCivillan,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      shape: const CircleBorder(),
                      onChanged: (bool? val) {
                        setState(() {
                          isCivillan = false;
                        });
                      }),
                  const Card(
                    elevation: 0,
                    color: Color.fromRGBO(94, 74, 207, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: Text(
                        'SUPPORT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const InputField(
                isPassword: false,
                labelText: "Name",
                type: TextInputType.name,
              ),
              const SizedBox(
                height: 20,
              ),
              const InputField(
                isPassword: false,
                labelText: "Gender",
              ),
              const SizedBox(
                height: 20,
              ),
              const InputField(
                isPassword: false,
                labelText: "Aadhar",
                type: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              const InputField(
                isPassword: false,
                labelText: "Emergeny Contact 1",
                type: TextInputType.phone,
              ),
              const SizedBox(
                height: 20,
              ),
              const InputField(
                isPassword: false,
                labelText: "Emergeny Contact 2",
                type: TextInputType.phone,
              ),
              const SizedBox(
                height: 50,
              ),
              Button(
                btnName: "Confirm",
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Already have an account  ',
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
                                  builder: (context) => const SignIn()));
                        },
                      text: 'Sign In',
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
            ]),
      ),
    );
  }
}
