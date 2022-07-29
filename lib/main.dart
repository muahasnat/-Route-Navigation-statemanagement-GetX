import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_navigation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Navigarion"),
            centerTitle: true,
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    // Get.to(
                    //   Home(),
                    //   fullscreenDialog: true,
                    //   transition: Transition.zoom,
                    //   //duration: Duration(milliseconds: 2000),
                    //   curve: Curves.bounceInOut,
                    // );
                    // Get.off(Home());
                    // Get.offAll(Home());
                    //go the next screen with same data
                    //Get.to(Home(), arguments: "Data from main");
                    var data = await Get.to(Home());
                    print("The Resived data is $data");
                  },
                  child: Text("Go to Home"))
            ],
          )),
        ));
  }
}
