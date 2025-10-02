import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  final String title;
  const Screen2({super.key, required this.title});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final TextEditingController controller = TextEditingController();
  String enteredText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Screen 1"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  labelText: "Enter Your Name",
                  labelStyle: const TextStyle(color: Colors.deepPurple),
                  hintText: "Type something...",
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon:
                      const Icon(Icons.person, color: Colors.deepPurple),
                  filled: true,
                  fillColor: Colors.deepPurple.shade50,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.deepPurple.shade200),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Colors.deepPurple, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (controller.text.isNotEmpty) {
                        enteredText = controller.text;
                      } else {
                        enteredText = "NULL";
                      }
                    });
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.deepPurple),
                  )),
              SizedBox(height: 20),
              Text(
                "You Entered: $enteredText",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
