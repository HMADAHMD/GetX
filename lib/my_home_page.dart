import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';
import 'package:getxcontroller/tap_controller.dart';

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key});

  // it is a dependency injection
  TapController controller = Get.put(TapController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 37, 33, 243),
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text(
              'GetX',
              style: TextStyle(fontSize: 30),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // you can also remove the builder 'tapcontroller' because 
              // this work is already done in dependency injection
              GetBuilder<TapController>(builder: (tapController) {
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
                  print('tap pressed');
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
                      'Tap3',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('tap pressed');
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
                      'Tap4',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
