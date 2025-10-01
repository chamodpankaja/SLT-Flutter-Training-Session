import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "Apple",
      "Banana",
      "Orange",
      "Pineapple",
      "Watermelon",
      "Kiwi",
      "Mango",
    ];
    return Scaffold(
        body: ListView.builder(
          padding: EdgeInsets.all(16),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.all(16),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.yellow[(index + 1) * 100],
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  items[index],
                  style: TextStyle(fontSize: 20),
                ),
              );
            }));
  }
}
