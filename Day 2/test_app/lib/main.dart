import 'package:flutter/material.dart';
import 'package:test_app/pages/container_example.dart';
import 'package:test_app/pages/appbar_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   body: Center(
      //     child: Text(
      //       "Result :  $counter",
      //       style: TextStyle(fontSize: 30),
      //     ),
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       setState(() {
      //         counter++;
      //       });
      //     },
      //     child: Icon(Icons.add),
      //   ),
      // ),


     home: AppbarExample(),
     //home: ContainerExample()
    );
  }
}
