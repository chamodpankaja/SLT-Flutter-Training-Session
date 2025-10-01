import 'package:flutter/material.dart';
import 'package:my_app/widgets/vehicle_card.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ElevatedButton(
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //             content: Text(
        //               "Elevated Button Clicked",
        //               style: TextStyle(
        //                   color: Colors.white, fontWeight: FontWeight.bold),
        //             ),
        //             backgroundColor: Colors.green,
        //             behavior: SnackBarBehavior.floating,
        //             margin: EdgeInsets.all(16.0),
        //             duration: Duration(seconds: 2),
        //           ));
        //         },
        //         child: Text("Elevated Button")),
        //     TextButton(onPressed: () {}, child: Text("Text Button")),
        //     IconButton(onPressed: () {
        //        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //             content: Text(
        //               "Elevated Button Clicked",
        //               style: TextStyle(
        //                   color: Colors.white, fontWeight: FontWeight.bold),
        //             ),
        //             backgroundColor: Colors.green,
        //             behavior: SnackBarBehavior.floating,
        //             margin: EdgeInsets.all(16.0),
        //             duration: Duration(seconds: 2),
        //           ));
        //     }, icon: Icon(Icons.add))
        //   ],
        // ),

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               VehicleCard(ImgURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRToJzYiXrhUxfMUQQv9Cu9N4b1_hRl6dPQig&s", title: "Car"),
               VehicleCard(ImgURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRToJzYiXrhUxfMUQQv9Cu9N4b1_hRl6dPQig&s", title: "bus")
             
            ],
          ),
        ),
      ),
    );
  }
}
