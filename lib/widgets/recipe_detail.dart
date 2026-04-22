import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);


    return  SizedBox.expand(
      child: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Row(
          children: [
            SizedBox(
              width: 240,
              height: 240,
              child: recipe.customImage(),
            ),
            SizedBox(width: 12),
            Text(
              recipe.name,
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: (){
                uiController.deselectRecipe();
              },
            )
          ],
        ),
      )
    );
  }
}