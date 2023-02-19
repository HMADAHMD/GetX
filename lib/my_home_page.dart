import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getxcontroller/pages/first_page.dart';
import 'package:getxcontroller/pages/second_page.dart';
import 'package:getxcontroller/tap_controller.dart';

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key});

  // it is a dependency injection
  TapController controller = Get.put(TapController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 37, 33, 243),
        ),
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // you can also remove the builder 'tapcontroller' because
              // this work is already done in dependency injection
              GetBuilder<TapController>(builder: (_) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      controller.x.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                );
              }),
              GestureDetector(
                onTap: () {
                  controller.increaseX();
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.resetX();
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'Reset',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => FirstPage());
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'Go to First Page',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => SecondPage());
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'Go to Second Page',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              GetBuilder<TapController>(builder: (_){
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      'sum is: ${controller.addition()}',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                );
              })
            ],
          ),
        ));
  }
}
