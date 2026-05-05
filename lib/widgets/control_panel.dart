import 'package:flutter/material.dart';
import 'package:lab2/widgets/logo.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';
import 'package:lab2/app_theme.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      color: const Color.fromARGB(255, 138, 180, 224),
      child: Column(
        children: const [
          Logo(),
          Text(
            'Hitta ett recept som passar genom att \n ändra inställningarna nedanför.',
          ),

          Text('Ingrediens:', style: AppTheme.smallHeading),
          IngredientControl(),

          Text('Kök:', style: AppTheme.smallHeading),
          KitchenControl(),

          Text('Svårighetsgrad', style: AppTheme.smallHeading),
          DifficultyControl(),

          Text('Maxpris:', style: AppTheme.smallHeading),
          PriceControl(),

          Text('Maxtid:', style: AppTheme.smallHeading),
          TimeControl(),
        ],
      ),
    );
  }
}
