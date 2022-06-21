import 'package:flutter/material.dart';
import 'package:magic_counter/widgets/life_text.dart';

class LifeBox extends StatefulWidget {
  Color color;
  double life;
  LifeBox({Key? key, required this.color, required this.life})
      : super(key: key);

  @override
  State<LifeBox> createState() => _LifeBoxState();
}

class _LifeBoxState extends State<LifeBox> {
  int life = 20;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Material(
                  color: widget.color,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        life--;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  color: widget.color,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        life++;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          IgnorePointer(child: LifeText(life: life.toString()))
        ],
      ),
    );
  }
}
