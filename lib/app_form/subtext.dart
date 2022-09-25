import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'subimg.dart';

class subText extends StatelessWidget {
  final Screens screenn;

  const subText({
    Key? key,
    required this.screenn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Submitted',
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
