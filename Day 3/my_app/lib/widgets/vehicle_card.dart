import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final String ImgURL;
  final String title;
  const VehicleCard({super.key, required this.ImgURL, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              ImgURL,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
