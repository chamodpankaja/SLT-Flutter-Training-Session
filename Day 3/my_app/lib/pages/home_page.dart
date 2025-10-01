import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(

    //     // body: Center(
    //     //   child: ClipRRect(
    //     //     borderRadius: BorderRadius.circular(20),
    //     //     child: Image.asset(
    //     //       'assets/download.jpeg',
    //     //       fit:BoxFit.cover
    //     //     ),
    //     //   )
    //     // ),

    //     // body:Center(
    //     //   child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRToJzYiXrhUxfMUQQv9Cu9N4b1_hRl6dPQig&s")
    //     // )

    //     body: Padding(
    //   padding: const EdgeInsets.all(16.0),
    //   child: Center(
    //       child: Stack(
    //     //child:Image.network("https//picsum.photos/200")
    //     children: [
    //       ClipRRect(
    //           borderRadius: BorderRadius.circular(20),
    //           child: Image.network(
    //             "https://picsum.photos/200",
    //             width: double.infinity,
    //             fit: BoxFit.cover,
    //           )),
    //           Positioned(child:Container(
    //             color:Colors.black87
    //           ) )
    //     ],
    //   )),
    // ));

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      ),
                  child: Image.network(
                    "https://picsum.photos/200",
                    width: double.infinity,
                    
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(bottom: 10,left:10,

              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.black87,
                child: Text("Flutter Day 03",style: TextStyle(color: Colors.white),),
              ),

              
              
              
              
              )
              ,Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Hello",style: TextStyle(color: Colors.white)),
              )
             
            ],
          ),
        ),
      ),
    );
  }
}
