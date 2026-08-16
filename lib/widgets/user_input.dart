import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  const UserInput({
    super.key,
    required this.labelText,
    this.suffixIcon,
    this.controller,
    this.obscureText = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },

      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff7C7C7C)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff53B175)),
        ),
      ),
    );
  }
}
