import 'package:flutter/material.dart';
import 'package:gcek/screens/welcome/welcome_screen.dart';

class RoundedPasswordFields extends StatelessWidget {
  final ValueChanged<String> onChanged;
  // final _passwordController = TextEditingController();

  const RoundedPasswordFields({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        //   controller: _passwordController,
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(Icons.lock),
          suffixIcon: Icon(
            Icons.visibility,
          ),
          border: InputBorder.none,
          hintText: "Password",
        ),
      ),
    );
  }
}
