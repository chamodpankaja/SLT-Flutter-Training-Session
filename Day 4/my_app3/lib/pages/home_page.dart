import 'package:flutter/material.dart';
import 'package:my_app3/pages/add_users.dart';
import 'package:my_app3/pages/http_data.dart';
import 'package:my_app3/pages/screen_1.dart';
import 'package:my_app3/pages/screen_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Home Page"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => HttpData()));
                },
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow),
                  child: Center(
                    child: Text("View Users"),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                 onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>AddUsers()));
                },
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: Center(
                    child: Text("Add users"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
