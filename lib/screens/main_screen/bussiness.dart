import 'package:flutter/material.dart';
import 'package:saavi/components/button.dart';

class Bussiness extends StatelessWidget {
  const Bussiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg1.png"), fit: BoxFit.cover),
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text(
                        'REPORT A CRIME',
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
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.2,
                            height: 75,
                            child: TextFormField(
                              maxLines: null,
                              expands: true,
                              decoration: InputDecoration(
                                  labelText: 'Name',
                                  labelStyle:
                                      const TextStyle(color: Colors.grey),
                                  contentPadding: const EdgeInsets.all(20.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xFFD772B2))),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xFFD772B2))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xFFD772B2)))),
                              enabled: true,
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.2,
                            height: 75,
                            child: TextFormField(
                              maxLines: null,
                              expands: true,
                              decoration: InputDecoration(
                                  labelText: 'Location',
                                  labelStyle:
                                      const TextStyle(color: Colors.grey),
                                  contentPadding: const EdgeInsets.all(20.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xFFD772B2))),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xFFD772B2))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xFFD772B2)))),
                              enabled: true,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: TextFormField(
                          maxLines: null,
                          expands: true,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              labelText: 'Report',
                              labelStyle: const TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xFFD772B2))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xFFD772B2))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xFFD772B2)))),
                          enabled: true,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Button(btnName: "Submit", onPressed: () {})
                  ]),
            )),
      ),
    );
  }
}
