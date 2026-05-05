import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:provider/provider.dart';
import 'package:lab2/constants/assets.dart';

class TimeControl extends StatefulWidget {
  const TimeControl({super.key});

  @override
  State<TimeControl> createState() => _TimeControlState();
}

class _TimeControlState extends State<TimeControl> {
 double _time = 60;

  @override
  Widget build(BuildContext context) {
    var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);
    return Column(
      children: [
        Slider(
          value: _time,
          divisions: 15,
          max: 150,
          onChanged: (double value) {
            setState(() {
              _time = value;
            });
            recipeHandler.setMaxTime(value.round());
          },
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Image.asset(Assets.timeIcon, width: 20),
              const SizedBox(width: 6),
              Text('${_time.round()} minuter'),
            ],)
        )
      ],
  );
  }
}