import 'package:flutter/material.dart';
import 'package:saavi/components/button.dart';
import 'package:saavi/components/input_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF232323),
            fontSize: 18,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      NetworkImage('https://i.imgur.com/6Mx5C9S.jpg')),
              const SizedBox(
                height: 40,
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
                labelText: "EV Number",
                type: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
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
                isPassword: false,
                labelText: "Phone Number",
                type: TextInputType.phone,
              ),
              const SizedBox(
                height: 20,
              ),
              const InputField(
                isPassword: false,
                labelText: "Location",
                type: TextInputType.streetAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              Button(btnName: "Save Changes", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
