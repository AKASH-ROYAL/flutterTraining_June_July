import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TaskTwo extends StatefulWidget {
  const TaskTwo({super.key});

  @override
  State<TaskTwo> createState() => _TaskTwoState();
}

class _TaskTwoState extends State<TaskTwo> {
  List<Map<String, dynamic>> data = [];
  List filterddata = [];

  TextEditingController filerctrl = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var loadString = await rootBundle.loadString("assets/sampledata.json");
      var jsonData = jsonDecode(loadString);
      data = jsonData['data'];
      print(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TaskTwo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
              controller: filerctrl,
            ),
            // Name
            ElevatedButton(
              child: Text("name"),
              onPressed: () {
                filter_names(test2: "Test2Value", test1: "Test1Value");
              },
            ),
            //University
            ElevatedButton(
                onPressed: () {
                  filterddata.clear();
                  for (var individualData in data) {
                    var name = individualData['university'];
                    if (name == filerctrl.text) {
                      filterddata.add(individualData);
                      print("Condition Print : $filterddata");
                    }
                  }
                  print("Controller : ${filterddata}");
                },
                child: Text("university")),
            //Role
            ElevatedButton(
                onPressed: () {
                  filterddata.clear();
                  for (var individualData in data) {
                    var role = individualData['branches'][0]['role'];
                    if (role == filerctrl.text) {
                      filterddata.add(individualData);
                      // print("Condition Print : $filterddata");
                    }
                  }
                  print("Controller : ${filterddata.length}");
                  print("Controller : ${filterddata}");
                },
                child: Text("role")),
            //Depertment
            ElevatedButton(
                onPressed: () {
                  filterddata.clear();
                  for (var individualData in data) {
                    var dept = individualData['branches'][0]["num"];
                    print("dept $dept");
                    if (dept == filerctrl.text) {
                      filterddata.add(individualData);
                      print("Condition Print : $filterddata");
                    }
                  }
                  print("Controller : ${filterddata}");
                },
                child: Text("department")),
          ],
        ),
      ),
    );
  }

  void filter_names({
    required String test1,
    required String test2,
  }) {
    //   filterddata.clear();
    //
    // for (var individualData in data) {
    //   var name = individualData['name'];
    //   if (name == filerctrl.text) {
    //     filterddata.add(individualData);
    //     print("Condition Print : $filterddata");
    //     print("Condition Print : $test");
    //   }
    // }
    print("Test1 : ${test1}");
    print("Test2 : ${test2}");
  }
}
