import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/util/cuisine.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:lab2/util/main_ingredient.dart';
import 'package:provider/provider.dart';
import 'package:lab2/ui_controller.dart';

class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(AppTheme.paddingTiny),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.paddingMedium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              _image(recipe),
              Text('Ingredienser:'),
              for (final ingredient in recipe.ingredients)
                  Text(ingredient.toString()),
              //TEXTFÖR INGREDIENSER
                
            ],),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: AppTheme.paddingMediumSmall),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    recipe.name,
                    style: AppTheme.largeHeading,
                    ),
                    Row(
                      children: [
                        MainIngredient.icon(recipe.mainIngredient)!,
                                Container(width: 48,child: Difficulty.icon(recipe.difficulty)!),
                                const SizedBox(width: 12),
                                Text('${recipe.time} min'),
                                const SizedBox(width: 12),
                                Text('${recipe.price} kr'),
                      ],
                    ),
                  Text(recipe.description),
                  Text(
                    'Tillagning:',
                    style: AppTheme.mediumHeading,
                    ),
                  Text(recipe.instruction)
                  //MATGREJS
                
                ],),
              ),
            ),
                 IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        uiController.deselectRecipe();
                      },
                 ),
          ],),
        ),
      ),
    );
  }


  Widget _image(Recipe recipe) {
    var square = ClipRect(
      child: Container(
        width: 240,
        height: 240,
        child: FittedBox(fit: BoxFit.cover, child: recipe.image,),
      ),
    );

    var flagImage = Cuisine.flag(recipe.cuisine, width: 60.0);

    return Stack(
      children: [
        square,
        Positioned(bottom: 8, right: 8,child: flagImage!,)
      ],
    );
  }


}


/**
 * Card(
      child: Row(
        children: [
          Stack(
            children: [
              SizedBox(
                width: 240,
                height: 240,
                child: recipe.customImage(width: 240, height: 240, fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Cuisine.flag(recipe.cuisine, width: 60) ?? const SizedBox(),
              ),
            ],
          ),

          // Högerdelen
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Titel + stängknapp
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(recipe.name),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        uiController.deselectRecipe();
                      },
                    ),
                  ],
                ),

                // Tillagning
                const Text("Tillagning"),
                Text(recipe.instruction),

                // Ingredienser
                const Text("Ingredienser"),
                for (final ingredient in recipe.ingredients)
                  Text(ingredient.toString()),
              ],
            ),
          ),
        ],
      ),
    );
 */