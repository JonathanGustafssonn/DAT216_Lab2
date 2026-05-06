import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lab2/constants/assets.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Image.asset(Assets.logo, height: 68),
        ),
        Stack(
          children: [
            const Text(
              'RECEPT',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 28, 58),
                fontSize: 48,
                fontFamily: 'Monoton',
              ),
            ),
            Transform.rotate(
              angle: -20 * pi / 180,
              child: const Padding(
                padding: EdgeInsets.only(left: 100, top: 20),
                child: Text(
                  'Sök',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 64,
                    color: Color(0xFFFFAC33),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
