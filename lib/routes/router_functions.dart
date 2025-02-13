import 'package:flutter/material.dart';
import 'package:recipe_app/models/food.dart';
import 'package:recipe_app/models/food_category.dart';
import 'package:recipe_app/screens/favorites_screen.dart';
import 'package:recipe_app/screens/food_recipes_screen.dart';
import 'package:recipe_app/screens/recipe_details.dart';

void navigateToFoodRecipiesScreen(BuildContext context, FoodCategory category) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (ctx) => FoodRecipesScreen(category),
    ),
  );
}

void navigateToFavorites(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const FavoritesScreen(),
    ),
  );
}

void navigateToRecipe(BuildContext context, Food recipe) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => RecipeDetails(recipe: recipe),
    ),
  );
}