//import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gcek/constants.dart';
import 'package:gcek/users/dashboard.dart';
import 'package:gcek/Admin/ad_dashboard.dart';
import 'package:gcek/screens/welcome/roundedPwdField.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  final _prnnoController = TextEditingController();
  final _passwordController = TextEditingController();
  Future login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _prnnoController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _prnnoController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

/*
  static Future<User?> loginUsingEmailPassword(required String email, required String password, required BuildContext context)async{
    Firebase auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.signInWithEmaiAndPassword(email: emai, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch(e){
      if(e.code == "user-not-found"){
        print("No User found for tha prn");
      }
    }

    return user;
  }*/
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.home),
        title: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: kBlueColor,
        elevation: 10,
        shadowColor: Color.fromARGB(255, 224, 210, 248),
        brightness: Brightness.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // height: size.height * .45,
            decoration: BoxDecoration(
              color: //kBlueLightColor,
                  Color.fromARGB(255, 220, 213, 234),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFieldContainer(
                        child: TextField(
                          controller: _prnnoController,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                            ),
                            border: InputBorder.none,
                            hintText: "PRN NO.",
                          ),
                        ),
                      ),
                      // RoundedPasswordFields(
                      //   onChanged: (value) {},
                      //  ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2,
                        ),
                        child: TextFieldContainer(
                          child: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            // onChanged: onChanged,
                            decoration: InputDecoration(
                              icon: Icon(Icons.lock),
                              suffixIcon: Icon(
                                Icons.visibility,
                              ),
                              border: InputBorder.none,
                              hintText: "Password",
                            ),
                          ),
                        ),
                      ),
                      //login button
                      GestureDetector(
                        onTap: login,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 50,
                          ),
                          width: size.width * 0.6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(29),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => dashboard())));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  vertical: 18,
                                  horizontal: 30,
                                ),
                                backgroundColor: kBlueLightColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kBlueLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
//  @override
//   Widget build(BuildContext context) {
//     return TextFieldContainer(
//       child: TextField(
//         controller: _passwordController,
//         obscureText: true,
//         onChanged: onChanged,
//         decoration: InputDecoration(
//           icon: Icon(Icons.lock),
//           suffixIcon: Icon(
//             Icons.visibility,
//           ),
//           border: InputBorder.none,
//           hintText: "Password",
//         ),
//       ),
//     );
//   }
