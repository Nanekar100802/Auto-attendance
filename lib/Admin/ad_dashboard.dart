import 'package:flutter/material.dart';
import 'package:gcek/users/attendance.dart';
import 'package:gcek/constants.dart';
import 'package:gcek/users/leavesmry.dart';
import 'package:gcek/screens/checkuser.dart';
import 'package:gcek/screens/welcome/welcome_screen.dart';

//import 'package:firebase_core/firebase_core.dart';
class ad_dashboard extends StatelessWidget {
  const ad_dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.home),
          title: Text(
            'DASHBOARD',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          backgroundColor: kBlueColor,
          elevation: 10,
          shadowColor: kShadowColor,
          brightness: Brightness.dark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    width: double.infinity,
                    height: 50,
                  ),
                  Container(
                    // margin: const EdgeInsets.only(left: 20.0),
                    child: SafeArea(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.pin_drop,
                          ),
                          Flexible(
                            child: Text(
                              "Allocated Location: Govt. College of Engineering, Karad",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 100,
                  ),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    //childAspectRatio: .85,
                    crossAxisSpacing: 22,
                    mainAxisSpacing: 40,

                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Attendance())));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 79, 61, 113),
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 6.0,
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.auto_graph,
                                  size: 50,
                                  color: kTextColor,
                                ),
                                // Spacer(),
                                Text(
                                  'ATTENDANCE HISTORY',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => LeaveSmry())));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 79, 61, 113),
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 6.0,
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.rule,
                                  size: 50,
                                  color: kTextColor,
                                ),
                                //Spacer(),
                                Text(
                                  ' LEAVE  FORMS ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            )),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
