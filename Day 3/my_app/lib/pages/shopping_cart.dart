import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  final List<Map<String, dynamic>> cartItem = [
    {
      "name": "Mobile Phone",
      "imageURL": "https://picsum.photos/200",
      "quantity": 2
    },
    {"name": "Headset", "imageURL": "https://picsum.photos/200", "quantity": 3},
    {"name": "Watch", "imageURL": "https://picsum.photos/200", "quantity": 1},
    {"name": "Laptop", "imageURL": "https://picsum.photos/200", "quantity": 5}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            "Shopping Cart",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: cartItem.length,
            itemBuilder: (context, index) {
              final item = cartItem[index];

              return Card(
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(item['imageURL'],
                              height: 80, width: 80, fit: BoxFit.cover)),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['name'],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Quantity: ${item['quantity']}",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                if (item['quantity'] > 0) {
                                  setState(() {
                                    item['quantity']--;
                                  });
                                }
                              },
                              icon: Icon(
                                Icons.remove_circle_outline,
                                color: Colors.purple,
                              )),
                          Text(
                            "${item['quantity']}",
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  item['quantity']++;
                                });
                              },
                              icon: Icon(
                                Icons.add_circle_outline,
                                color: Colors.purple,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
