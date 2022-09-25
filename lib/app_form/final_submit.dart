import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:gcek/app_form/app_widget.dart';
import 'package:gcek/app_form/subimg.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class final_submit extends StatefulWidget {
  const final_submit({Key? key}) : super(key: key);

  @override
  State<final_submit> createState() => _final_submitState();
}

class _final_submitState extends State<final_submit> {
  // @override
  //  Widget build(BuildContext context) {
  //   return Material(
  //      debugShowCheckedModeBanner: false,
  //   );
  // }

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
          subimage(),
          //  formContent(),
        ],
      ),
    );
  }
}
