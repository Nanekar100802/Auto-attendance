import 'package:flutter/material.dart';
import 'package:gcek/users/app_form/final_submit.dart';
//import 'package:gcek/app_form/leaveapp.dart';
import 'package:gcek/users/app_form/toptext.dart';
//import 'package:gcek/leavesmry.dart';
//import 'package:gcek/main.dart';

enum Screens {
  appForm,
}

class formContent extends StatefulWidget {
  formContent({Key? key}) : super(key: key);

  @override
  State<formContent> createState() => _formContentState();
}

class _formContentState extends State<formContent> {
  List hostelNamelist = [
    {"title": "Hostel B", "value": '1'},
    {"title": "Hostel C", "value": '2'},
    {"title": "Hostel D", "value": '3'},
    {"title": "Hostel JIJAU", "value": '4'},
  ];

  String defaultValue = "";

  Widget inputField(String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
            ),
          ),
        ),
      ),
    );
  }

  Widget date() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 50,
              child: Material(
                elevation: 8,
                shadowColor: Colors.black87,
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'From',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: Material(
                elevation: 8,
                shadowColor: Colors.black87,
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'To',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget submitButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => final_submit())));
        },
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: const StadiumBorder(),
            // primary: kSecondaryColor,
            elevation: 8,
            shadowColor: Colors.black87),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget desc() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      child: SizedBox(
        height: 120,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextFormField(
            minLines: 10,
            maxLines: 30,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: 'Reason',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _hostelname() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      child: SizedBox(
        height: 55,
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(35),
          shadowColor: Colors.black87,
          child: DropdownButtonFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              value: defaultValue,
              items: [
                const DropdownMenuItem(child: Text("Select Hostel"), value: ""),
                ...hostelNamelist.map<DropdownMenuItem<String>>((e) {
                  return DropdownMenuItem(
                    child: Text(
                      e['title'],
                    ),
                    value: e['value'],
                  );
                }).toList(),
              ],
              onChanged: (value) {}),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const currentScreen = Screens.appForm;
    return Stack(
      children: [
        Positioned(
          top: 60,
          left: 24,
          child: TopText(
            screen: currentScreen,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Stack(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // inputField('Name'),
                      // inputField('Prn No'),
                      //inputField('Contact No.'),
                      _hostelname(),
                      inputField('Room No.'),
                      date(),
                      inputField('Subject'),
                      desc(),
                      submitButton('Submit'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
