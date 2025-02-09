import 'package:flutter/material.dart';
import 'package:recipe_app/models/food_category.dart';
import 'package:recipe_app/screens/food_recipes_screen.dart';

navigateToFoodRecipiesScreen(BuildContext context, FoodCategory category) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (ctx) => FoodRecipesScreen(category),
    ),
  );
}