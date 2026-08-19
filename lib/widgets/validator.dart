import 'package:flutter/material.dart';

class Validator extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String passwordlabel;
  final String emaillabel;
  const Validator({
    super.key,
    required this.formKey,
    required this.passwordlabel,
    required this.emaillabel,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,

      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: emaillabel,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff7C7C7C)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff53B117)),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter a value';
              } else if (!value.contains("@") || !value.contains(".")) {
                return "invalid Email";
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: passwordlabel,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff7C7C7C)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff53B117)),
              ),
            ),

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter a value';
              } else if (value.length < 8) {
                return "too Short";
              } else if (!RegExp(r'[a-z]').hasMatch(value)) {
                return "must contain lowercase letter";
              } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
                return "must contain uppercase letter";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  void submit() {
    if (formKey.currentState!.validate()) {
      ;
    }
    ;
  }
}
