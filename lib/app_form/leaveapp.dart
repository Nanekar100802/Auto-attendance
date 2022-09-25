import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:gcek/app_form/app_widget.dart';
import 'package:gcek/app_form/formcontent.dart';

class LeaveApp extends StatefulWidget {
  const LeaveApp({Key? key}) : super(key: key);

  @override
  State<LeaveApp> createState() => _LeaveAppState();
}

class _LeaveAppState extends State<LeaveApp> {
  Widget topWidget(double screenWidth) {
    return Transform.rotate(
      angle: -35 * math.pi / 180,
      child: Container(
          width: 1.2 * screenWidth,
          height: 1.2 * screenWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              gradient: const LinearGradient(
                  begin: Alignment(-0.2, -0.8),
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x007CBFCF),
                    Color(0xB316BFC4),
                  ]))),
    );
  }

  Widget bottomWidget(double screenWidth) {
    return Container(
      width: 1.5 * screenWidth,
      height: 1.5 * screenWidth,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment(0.6, -1.1),
          end: Alignment(0.7, 0.8),
          colors: [
            Color(0xDB4BE8CC),
            Color(0x005CDBCF),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -160,
            left: -30,
            child: topWidget(screenSize.width),
          ),
          Positioned(
            bottom: -160,
            left: -40,
            child: bottomWidget(screenSize.width),
          ),
          CenterWidget(size: screenSize),
          formContent(),
        ],
      ),
    );
  }
}
