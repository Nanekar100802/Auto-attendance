import 'package:flutter/material.dart';
import 'formcontent.dart';

class TopText extends StatelessWidget {
  final Screens screen;

  const TopText({
    Key? key,
    required this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Leave\nApplication',
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
