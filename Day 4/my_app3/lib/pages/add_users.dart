import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AddUsers extends StatefulWidget {
  const AddUsers({super.key});

  @override
  State<AddUsers> createState() => _AddUsersState();
}

class _AddUsersState extends State<AddUsers> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  bool isLoading = false;
  final String baseUrl = dotenv.env['baseURL'] ?? " ";

  Future<void> addUser() async {
    final String name = nameController.text.trim();
    final String role = roleController.text.trim();

    if (name.isEmpty || role.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(" Please fill all fields"),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }
    setState(() {
      isLoading = true;
    });

    final response =
        await http.post(Uri.parse("$baseUrl/users"),
            headers: {
              "Content-Type": "application/json",
            },
            body: json.encode({"name": name, "role": role}));

    setState(() {
      isLoading = false;
    });

    if (response.statusCode == 201) {
      final data = json.decode(response.body);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("User added successfully"),
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
        ),
      );
      nameController.clear();
      roleController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Failed to add user"),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Users"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  labelText: "Enter Your Name",
                  labelStyle: const TextStyle(color: Colors.deepPurple),
                  hintText: "Enter Name",
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
              TextField(
                controller: roleController,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  labelText: "Enter Your Role",
                  labelStyle: const TextStyle(color: Colors.deepPurple),
                  hintText: "Enter Role",
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.work, color: Colors.deepPurple),
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
              SizedBox(height: 30),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    addUser();
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.deepPurple),
                ),
              )
            ],
          ),
        ));
  }
}
