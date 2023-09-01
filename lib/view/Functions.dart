import 'package:flutter/material.dart';

class Functions extends StatefulWidget {
  const Functions({super.key});

  @override
  State<Functions> createState() => _FunctionsState();
}

class _FunctionsState extends State<Functions> {
  List data = [
    {"name": "Akash", "role": "Trainer", "qualification": "BCA"},
    {"name": "Jagadesh", "role": "Student", "qualification": "B.E.Mech"},
    {"name": "raja", "role": "Intern", "qualification": "B.E.Mechatronics"},
    {"name": "Alagar", "role": "Student", " qualification": "B.E.CSE"},
    {"name": "Anbarasan","role": "Student", "qualification": "BE production engineering"},
    {"name": "Lavanya", "role": "Intern", "qualification": "B.Sc.Physics"},
    {"name": "Abilash S", "role": "Intern", "qualification": "B.E CSE"},
    {"name": "kalimuthu", "role": "Student", "qualification": "BE"},
    {"name": "Susil kumar", "role": "Trainee", "qualification": "B.E CIVIL"},
    {"name": "kowsalya", "role": "student ", "qualification ": "BSC"},
    {"name": "reni", "role": "Student", "qualification": "BTech"},
    {"name": "sethu madhavan", "role": "student", "qualification": "B.E-Mech"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FUNCTIONALITIES INTRO"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              // width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    print("Trainer");
                  },
                  child: Text("Trainer")),
            ),
            Container(
              // width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    start();
                    // print("Students");
                  },
                  child: Text("Students")),
            ),
            Container(
              // width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    print("Intern");
                  },
                  child: Text("Intern")),
            ),
          ],
        ),
      ),
    );

  }

  void start() {
       print(data );
    print(data[5] );
    print(data[5]['role']);
    if(data[5]['role']=='Intern'){

      print(true);
    }
  }
}
