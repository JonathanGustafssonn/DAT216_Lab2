
import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/util/cuisine.dart';
import 'package:lab2/util/main_ingredient.dart';
import 'package:lab2/util/difficulty.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem(this.recipe, {required this.onTap, super.key});

  final Recipe recipe;
  final void Function() onTap;

  @override
    Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _image(recipe),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(recipe.name,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),

                    const SizedBox(height: 4),

                    Text(
                      recipe.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 8),

                    Row(
                      children: [
                        if (MainIngredient.icon(recipe.mainIngredient) != null)
                          ...[
                            MainIngredient.icon(recipe.mainIngredient)!, 
                            const SizedBox(width: 8),
                          ],

                        if (Difficulty.icon(recipe.difficulty) != null)
                          ...[
                            Difficulty.icon(recipe.difficulty)!, 
                            const SizedBox(width: 8),
                          ],

                        Text('${recipe.time} min'),
                        const SizedBox(width: 12),
                        Text('${recipe.price} kr'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _image(Recipe recipe) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: recipe.image.image,
                fit: BoxFit.cover,
              ),
            ),
          ),

          if (Cuisine.flag(recipe.cuisine) != null)
            Positioned(
              bottom: 6,
              right: 6,
              child: Cuisine.flag(recipe.cuisine)!,
            ),
        ],
      ),
    );
  }
}