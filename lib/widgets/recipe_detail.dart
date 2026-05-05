import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/util/cuisine.dart';
import 'package:provider/provider.dart';
import 'package:lab2/ui_controller.dart';

class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);

    return Card(
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
  }
}