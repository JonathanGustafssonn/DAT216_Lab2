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
      padding: const EdgeInsets.all(AppTheme.paddingMedium),
      color: const Color.fromARGB(255, 138, 180, 224),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Logo(),
          const Text(
            'Hitta ett recept som passar genom att ändra inställningarna nedanför.\n',
          ),

          const Text('Ingrediens:', style: AppTheme.smallHeading),
          const IngredientControl(),

          const Text('Kök:', style: AppTheme.smallHeading),
          const KitchenControl(),

          const Text('Svårighetsgrad', style: AppTheme.smallHeading),
          const DifficultyControl(),

          const Text('Maxpris:', style: AppTheme.smallHeading),
          const PriceControl(),

          const Text('Maxtid:', style: AppTheme.smallHeading),
          const TimeControl(),
        ],
      ),
    );
  }
}
