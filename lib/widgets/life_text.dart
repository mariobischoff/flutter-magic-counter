import 'package:flutter/material.dart';

class LifeText extends StatelessWidget {
  const LifeText({Key? key, required this.life}) : super(key: key);
  final String life;

  @override
  Widget build(BuildContext context) {
    return Text(
      life.toString(),
      style: const TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w100,
        color: Colors.black54,
      ),
    );
  }
}
