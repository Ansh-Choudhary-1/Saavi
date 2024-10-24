import 'package:flutter/material.dart';
import 'package:saavi/pallete/colors_pallete.dart';

class Button extends StatelessWidget {
  final String btnName;
  final Function() onPressed;
  const Button({required this.btnName, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(ColorsPallete.primary),
          ),
          onPressed: onPressed,
          child: Text(
            btnName,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )),
    );
  }
}
