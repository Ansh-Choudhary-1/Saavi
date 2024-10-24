import 'package:flutter/material.dart';
import 'package:saavi/components/input_field.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg1.png"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 222,
                    height: 52,
                    child: Text(
                      'HELP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: 'Sansation',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InputField(
                      isPassword: false,
                      labelText: "NGO",
                      value: "90674-345XX"),
                  SizedBox(
                    height: 20,
                  ),
                  InputField(
                      isPassword: false,
                      labelText: "MENTAL HEALTH",
                      value: "90674-345XX"),
                  SizedBox(
                    height: 20,
                  ),
                  InputField(
                      isPassword: false,
                      labelText: "WOMEN HELPLINE",
                      value: "90674-345XX"),
                  SizedBox(
                    height: 20,
                  ),
                  InputField(
                      isPassword: false,
                      labelText: "POLICE",
                      value: "90674-345XX"),
                  SizedBox(
                    height: 20,
                  ),
                  InputField(
                      isPassword: false,
                      labelText: "AMBULANCE",
                      value: "90674-345XX"),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
