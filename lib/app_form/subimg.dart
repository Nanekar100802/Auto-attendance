import 'package:flutter/material.dart';
//import 'package:gcek/app_form/subText.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'subtext.dart';

enum Screens {
  appForm,
}

class subimage extends StatefulWidget {
  const subimage({super.key});

  @override
  State<subimage> createState() => _subimageState();
}

class _subimageState extends State<subimage> {
  // Widget img() {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       body: Center(
  //         child: Image.asset(
  //           'assets/image/green-tick-icon-image.png',
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    const currScreen = Screens.appForm;
    return Stack(
      children: [
        Positioned(
          top: 60,
          left: 24,
          child: subText(
            screenn: currScreen,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/image/green-tick-icon-image.png',
              height: 200,
              width: 200,
            ),
          ],
        ),

        // Padding(
        //   padding: const EdgeInsets.only(top: 100),
        //   child: Stack(
        //     children: [
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.stretch,
        //         children: [],
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
    // return Scaffold(
    //   body: Center(
    //     child: Image.asset(
    //       'assets/image/green-tick-icon-image.png',
    //     ),
    //   ),
    // );
  }
}
