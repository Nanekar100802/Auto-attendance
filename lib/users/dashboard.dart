import 'package:flutter/material.dart';
import 'package:gcek/users/campus.dart';
import 'package:gcek/users/attendance.dart';
import 'package:gcek/constants.dart';
import 'package:gcek/users/app_form/leaveapp.dart';
import 'package:gcek/users/leavesmry.dart';

//import 'package:firebase_core/firebase_core.dart';
class dashboard extends StatelessWidget {
  const dashboard({super.key});

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
          backgroundColor: Color.fromARGB(255, 238, 188, 148),
          elevation: 10,
          shadowColor: Color.fromARGB(255, 244, 224, 202),
          brightness: Brightness.dark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
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
                                  builder: ((context) => Campus())));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 246, 190, 129),
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 6.0,
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.map,
                                  size: 50,
                                  color: Colors.red,
                                ),
                                // Spacer(),
                                Text(
                                  'CAMPUS',
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
                                  builder: ((context) => Attendance())));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 246, 190, 129),
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
                                  color: Colors.red,
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
                                  builder: ((context) => LeaveApp())));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 246, 190, 129),
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 6.0,
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.description,
                                  size: 50,
                                  color: Colors.red,
                                ),
                                // Spacer(),
                                Text(
                                  ' LEAVE   APPLICATION ',
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
                                    color: Color.fromARGB(255, 246, 190, 129),
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
                                  color: Colors.red,
                                ),
                                //Spacer(),
                                Text(
                                  ' LEAVE          SUMMARY ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            )),
                      ),

                      /*   CategoryCard(
                        svgSrc:
                            'https://media.istockphoto.com/photos/city-map-3d-illustration-picture-id477560990?s=612x612',
                        title: "Campus",
                        press: () {},
                      ),
                      CategoryCard(
                        svgSrc: 'assets/icons/icons8-home.svg',
                        title: "Attendance History",
                        press: () {},
                      ),
                      CategoryCard(
                        svgSrc: 'assets/icons/icons8-home.svg',
                        title: "Leave Application",
                        press: () {},
                      ),
                      CategoryCard(
                        svgSrc: 'assets/icons/icons8-home.svg',
                        title: "Leave Summary",
                        press: () {},
                      ),*/
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
