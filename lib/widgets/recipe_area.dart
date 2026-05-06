import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../ui_controller.dart';
import 'package:lab2/widgets/recipe_list.dart';
import 'package:lab2/widgets/recipe_detail.dart';

class RecipeArea extends StatelessWidget {
  const RecipeArea({super.key});

  @override
  Widget build(BuildContext context) {
    var uiController = context.watch<UIController>();
    Widget contents;

    if (uiController.showRecipeList) {
       contents = RecipeList();
    } else {
       contents = RecipeDetail(uiController.selectedRecipe!);
    }
    return Expanded(child: Container(
      color: const Color.fromARGB(255, 255, 0, 242),
      child: contents,
    ),
    );
  }
}