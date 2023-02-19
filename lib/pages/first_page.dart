import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getxcontroller/tap_controller.dart';

class FirstPage extends StatelessWidget {
  // const FirstPage({super.key});
  // you don't need to initialize the getx in each class you can find the one which you created at start.
  TapController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    controller.x.toString(),
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              );
            }),
            GestureDetector(
              onTap: () {
                controller.decreaseX();
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
                    '-',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
