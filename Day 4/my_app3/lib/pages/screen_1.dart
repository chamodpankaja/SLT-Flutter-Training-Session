import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Screen 1"),
        backgroundColor: Colors.green,
        //automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text("This is Screen 1"),
      ),
    );
  }
}