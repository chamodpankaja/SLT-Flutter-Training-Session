import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
class HttpData extends StatefulWidget {
  const HttpData({super.key});

  @override
  State<HttpData> createState() => _HttpDataState();
}

class _HttpDataState extends State<HttpData> {
  List users = [];
  bool isLoading = false;
  final String baseUrl = dotenv.env['baseURL'] ?? " ";

  Future<void> fetchUsers() async {
    setState(() => isLoading = true);

    final response = await http.get(
      Uri.parse("$baseUrl/users"),
    );

    if (response.statusCode == 200) {
      setState(() {
        users = json.decode(response.body);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("❌ Failed to load users"),
          backgroundColor: Colors.red,
        ),
      );
    }
    setState(() => isLoading = false);
  }

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Users List"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : users.isEmpty
              ? const Center(
                  child: Text(
                    "No users available",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];

                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(16),
                        leading: CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          child: Text(
                            user['id'].toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        title: Text(
                          user['name'], // full name
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(user['role'],
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black87)),
                          ],
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios,
                            size: 16, color: Colors.grey),
                      ),
                    );
                  },
                ),
    );
  }
}
