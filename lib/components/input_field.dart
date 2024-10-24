import 'package:flutter/material.dart';
import 'package:saavi/pallete/colors_pallete.dart';

class InputField extends StatefulWidget {
  final String labelText;
  final bool isPassword;
  final TextInputType? type;
  final String? value;
  final TextEditingController? controller;
  const InputField(
      {required this.isPassword,
      required this.labelText,
      this.type = TextInputType.text,
      this.value,
      this.controller,
      super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool pass = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        readOnly: widget.value == null ? false : true,
        initialValue: widget.value,
        keyboardType: widget.type,
        controller: widget.controller,
        decoration: InputDecoration(
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        pass = !pass;
                      });
                    },
                    icon: Icon(pass ? Icons.visibility : Icons.visibility_off,
                        color: ColorsPallete.primary))
                : null,
            labelText: widget.labelText,
            labelStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.all(20.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(width: 1, color: Color(0xFFD772B2))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(width: 1, color: Color(0xFFD772B2))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(width: 1, color: Color(0xFFD772B2)))),
        enabled: true,
        obscureText: widget.isPassword && !pass);
  }
}
