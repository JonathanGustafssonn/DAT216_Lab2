import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/price_control.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [_controlpanel(context), Expanded(child: _recipeArea(context))]),
      );
  }

  Widget _controlpanel(context, {double width = 320}) {
    return Container(
      width: width,
      color: const Color.fromARGB(255, 193, 210, 218),
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(
            child: 
            Text('hello i am the title of this webpage')),
          Text('Hitta ett recept som passar getom att ändra inställningarna nedanför.'),
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
            PriceControl(),
          ],
        ),
    );
  }

  Widget _recipeArea(context) {
   return Expanded(
    child: Container(color: const Color.fromARGB(255, 204, 216, 176)),);
  }
}
