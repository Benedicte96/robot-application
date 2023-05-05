import 'package:flutter/material.dart';
import 'interfaces/listEngin.dart';
import 'interfaces/slide/carousel.dart';

import 'interfaces/firstpage.dart';
import 'interfaces/robot.dart';
import 'interfaces/whatsapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(color: Colors.black)
      ),
      home:  RobotPage (),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Robot5G '),
        backgroundColor: Colors.orange,
      ),
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amberAccent,
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 350,
                  margin: EdgeInsets.only(bottom: 15.0),
                  padding: EdgeInsets.all(0.0),
                  color: Colors.blue,

                )

              ],
            ),
          )
        ],
      )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
