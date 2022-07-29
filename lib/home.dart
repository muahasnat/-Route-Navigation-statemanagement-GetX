import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is Home Screen"),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Next")),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                //Get.back();
                Get.back(result: "This is from home sceen");
              },
              child: Text("Back to main")),
          SizedBox(
            height: 30,
          ),

          // Text(
          //   "${Get.arguments}",
          //   style: TextStyle(color: Colors.purple, fontSize: 20),
          // ),
        ],
      )),
    );
  }
}
