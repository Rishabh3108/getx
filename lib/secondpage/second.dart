import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second',style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,
      backgroundColor: Colors.grey[800],),
    );
  }
}
