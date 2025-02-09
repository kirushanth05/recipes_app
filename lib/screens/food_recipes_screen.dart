import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:recipe_app/components/custom_grid.dart';
import 'package:recipe_app/components/recipe_card.dart';
import 'package:recipe_app/models/food.dart';
import 'package:recipe_app/models/food_category.dart';
import 'package:recipe_app/screens/recipe_details.dart';

class FoodRecipesScreen extends StatelessWidget {
  const FoodRecipesScreen(this.foodCategory, {super.key});

  final FoodCategory foodCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              foodCategory.title,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            // const Gap(4),
            CustomGrid(
              child: (recipe) => RecipeCard(
                food: recipe,
                onTap: () {
                  _navigateToRecipeDetails(context, recipe);
                },
              ),
              items: (foodCategory.availableRecipe ?? []),
            )
          ],
        )),
      ),
    );
  }

  void _navigateToRecipeDetails(BuildContext context, Food recipeDetails) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => RecipeDetails(
          recipe: recipeDetails,
        ),
      ),
    );
  }
}