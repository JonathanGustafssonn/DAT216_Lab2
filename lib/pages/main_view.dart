import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';
import 'package:lab2/widgets/recipe_area.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [_controlpanel(context), Expanded(child: RecipeArea())]),
      );
  }

  Widget _controlpanel(context, {double width = 320}) {
    return Container(
      width: width,
      color: const Color.fromARGB(255, 138, 180, 224),
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(
            child: 
            Text('ReceptSök')),
          Text('Hitta ett recept som passar genom att ändra inställningarna nedanför.'),
          SizedBox(height: 12),
          Row(children:[Text('Ingrediens: '),IngredientControl()]),
          Row(children:[Text('Kök: '),KitchenControl()]),
          Center(
            child: 
            Text('Svårighetsgrad')),
            DifficultyControl(),
            Center(
            child: 
            Text('Maxpris:')),
            PriceControl(),
            Center(
            child: 
            Text('Maxtid:')),
            TimeControl(),
          ],
        ),
    );
  }
}


