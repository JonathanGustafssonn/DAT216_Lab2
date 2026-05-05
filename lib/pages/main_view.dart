import 'package:flutter/material.dart';
import 'package:lab2/widgets/recipe_area.dart';
import 'package:lab2/widgets/control_panel.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [const ControlPanel(), Expanded(child: RecipeArea())]),
      );
  }
}


