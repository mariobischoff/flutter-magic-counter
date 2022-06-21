import 'package:flutter/material.dart';
import 'package:magic_counter/widgets/life_box.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LifeBox(
            color: Colors.red,
            life: 20,
          ),
          LifeBox(
            color: Colors.blue,
            life: 20,
          ),
        ],
      ),
    );
  }
}
