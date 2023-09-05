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
    {
      "name": "Anbarasan",
      "role": "Student",
      "qualification": "BE production engineering"
    },
    {"name": "Lavanya", "role": "Intern", "qualification": "B.Sc.Physics"},
    {"name": "Abilash S", "role": "Intern", "qualification": "B.E CSE"},
    {"name": "kalimuthu", "role": "Student", "qualification": "BE"},
    {"name": "Susil kumar", "role": "Student", "qualification": "B.E CIVIL"},
    {"name": "kowsalya", "role": "Student ", "qualification ": "BSC"},
    {"name": "reni", "role": "Student", "qualification": "BTech"},
    {"name": "sethu madhavan", "role": "Student", "qualification": "B.E-Mech"}
  ];

  List studentRole = [];
  List trainerRole = [];
  List internRole = [];
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
                    Trainer();
                  },
                  child: Text("Trainer")),
            ),
            Container(
              // width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    students();
                    // print("Students");
                  },
                  child: Text("Students")),
            ),
            Container(
              // width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Intern();
                    print("Intern");
                  },
                  child: Text("Intern")),
            ),
          ],
        ),
      ),
    );
  }

  students() {
    print(data);
    print(data.length);

    studentRole.clear();
    for (int i = 0; i <= data.length - 1; i++) {
      if (data[i]['role'] == 'Student') {
        studentRole.add(data[i]);
      }
    }
    print(" ${studentRole.length}");
    print(" ${studentRole}");
  }

  Intern() {
    print(data);
    print(data.length);
    internRole.clear();

    for (int i = 0; i <= data.length - 1; i++) {
      if (data[i]['role'] == 'Intern') {
        internRole.add(data[i]);
      }
    }
    print(" ${internRole.length}");
    print(" ${internRole}");
  }

  Trainer() {
    print(data);
    print(data.length);
    trainerRole.clear();
    for (int i = 0; i <= data.length - 1; i++) {
      if (data[i]['role'] == 'Trainer') {
        trainerRole.add(data[i]);
      }
    }
    print(" ${trainerRole.length}");
    print(" ${trainerRole}");
  }
}
