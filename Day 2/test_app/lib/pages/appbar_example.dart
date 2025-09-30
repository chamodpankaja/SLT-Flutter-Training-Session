import 'package:flutter/material.dart';

class AppbarExample extends StatelessWidget {
  const AppbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Flutter Session"),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10,
          ),
        ],
      ),

      //body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /////////////// Container Example ///////////////
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                  child: Text(
                "Container 1",
                style: TextStyle(fontSize: 24, color: Colors.white),
              )),
            ),
              /////////////// Container Example with Column ///////////////
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Container 2",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  Icon(
                    Icons.home,
                    size: 50,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  )
                ],
              ),
            ),

            /////////////// Container Example with Row ///////////////
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.home,
                    size: 50,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
