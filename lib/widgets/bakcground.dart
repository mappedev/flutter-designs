import 'package:flutter/material.dart';
import 'dart:math';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BoxDecoration boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xff2E305F), Color(0xff202333)],
        stops: [0.2, 0.8],
      ),
    );

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: boxDecoration,
      child: Align(
        alignment: Alignment(-3, -1.5),
        child: Transform.rotate(
          angle: -35 * pi / 180,
          child: Container(
            width: 360,
            height: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(251, 142, 172, 1),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
