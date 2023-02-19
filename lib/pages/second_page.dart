import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:getxcontroller/pages/third_page.dart';
import 'package:getxcontroller/tap_controller.dart';

class SecondPage extends StatelessWidget {
  //const SecondPage({super.key});
  TapController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
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
                    'Value is: ${controller.x.toString()}',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              );
            }),
            GestureDetector(
              onTap: () {
                Get.to(() => ThirdPage());
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
                    'Go to ThirdPage',
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
