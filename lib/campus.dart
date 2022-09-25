import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Campus extends StatefulWidget {
  const Campus({Key? key}) : super(key: key);

  @override
  State<Campus> createState() => _CampusState();
}

class _CampusState extends State<Campus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campus'),
      ),
    );
  }
}
