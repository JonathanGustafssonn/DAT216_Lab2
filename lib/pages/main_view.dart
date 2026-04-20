import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
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
          Text('a bit of text'),
          Text('a bit more of text'),
          Row(children:[Text('Ingrendiens: '),IngredientControl()]),
          Row(children:[Text('Kök: '),IngredientControl()]),
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
