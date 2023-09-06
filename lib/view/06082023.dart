import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UiUpdation extends StatefulWidget {
  const UiUpdation({super.key});

  @override
  State<UiUpdation> createState() => _UiUpdationState();
}

class _UiUpdationState extends State<UiUpdation> {
  List data = [];
  List filterddata = [];
  TextEditingController filerctrl = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var loadString = await rootBundle.loadString("assets/sampledata.json");
      var jsonData = jsonDecode(loadString);
      data = jsonData['data'];
      print(data);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(data.length);
    return Scaffold(
      appBar: AppBar(
        title: Text("UiUpdation"),
        centerTitle: true,
      ),
      body: Column(
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
                  }
                }
                print("Controller : ${filterddata}");
                print("Controller : ${filterddata.length}");
                setState(() {});
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
                setState(() {});
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
                print("filterddata Length : ${filterddata.length}");
                setState(() {});
              },
              child: Text("department")),
          Container(
            height: 400,
            // color: Colors.green,
            child: ListView.builder(
                itemCount: filterddata.length,
                itemBuilder: (context, i) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(filterddata[i]['name'].toString()),
                      Text(filterddata[i]['university'].toString()),
                    ],
                  );
                }),
          ),
        ],
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
