import 'package:flutter/material.dart';

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({super.key});

  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          children: [
            //1st container
            Container(
                height: 200,
                child: Image.asset(
                  "assets/homescreen.png",
                  fit: BoxFit.fitHeight,
                )),
            //2nd container
            Container(
              padding: EdgeInsets.all(10),
              width: 400,
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // initial column
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("This is the Flutter playground"),
                        Text("Play to learn flutter "),
                      ],
                    ),
                  ),
                  Spacer(),
                  //Icons text
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.star),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("41"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //3rd container
            Container(
              width: 500,
              // decoration: BoxDecoration(
              //     border: Border.all(color: Colors.green, width: 3)),
              child:const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [Icon(Icons.call), Text("Call")],
                  ),
                  Column(
                    children: [Icon(Icons.send), Text("Route")],
                  ),
                  Column(
                    children: [Icon(Icons.share), Text("Share")],
                  )
                ],
              ),
            ),

            //4th container
            Container(
              width: 300,
              height: 200,
              color: Colors.amber,
              padding:const  EdgeInsets.all(4),
              margin: EdgeInsets.all(20),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.all(Radius.circular(30.0)),
              //     border: Border.all(
              //       color: Colors.black,
              //     )),
              child: Center(
                child: Text(

                    "qwertyuioasdfghjkzxcvbnmqwertyuioasdfghjkzxcvbnmqwertyuioasdfghjkzxcvbnmqwertyuioasdfghjkzxcvbnm"
                   , style:TextStyle(
                    color: Colors.red
                ),


             )

              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("My First App"),
      centerTitle: true,
      leading: Icon(Icons.menu),
      actions: const [
        Icon(Icons.telegram_outlined),
        Icon(Icons.search),
        Icon(Icons.person),
      ],
    );
  }

  Center buildCenter() {
    return Center(
      child: Container(
        height: 500,
        width: 400,
        child: buildColumn(),
      ),
    );
  }

  Column buildColumn() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
        Text("Content of MYFIRSTAPP"),
      ],
    );
  }
}
