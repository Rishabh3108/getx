import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtry/counterhome/counter_controller.dart';
import 'package:getxtry/secondpage/second.dart';

class Counter extends StatelessWidget {
  Counter({Key? key}) : super(key: key);
  CounterController c = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          c.increment();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {Get.to(Second());
              },
              child: Text(
                'Next Page',
                style: TextStyle(color: Colors.grey[800]),
              )),
          TextButton(
              onPressed: () {Get.snackbar('Hii', 'Welcome',backgroundColor: Colors.white);},
              child: Text(
                'Snack Bar',
                style: TextStyle(color: Colors.grey[800]),
              )),
          TextButton(
              onPressed: () {Get.defaultDialog(title:'This is Alert Dialog');},
              child: Text(
                'Dialogs',
                style: TextStyle(color: Colors.grey[800]),
              )),
          Center(child: Obx(() {
            return Text(
              c.a.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            );
          }))
        ],
      ),
    );
  }
}
