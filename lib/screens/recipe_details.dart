import 'package:flutter/material.dart';
import 'package:recipe_app/models/food.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key, required this.recipe});

  final Food recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // Image(image: NetworkImage(recipe.imageUrl ?? '')),
          Image.network(recipe.imageUrl ??
              'https://www.datocms-assets.com/34887/1636118293-food-slider-placeholder.png?crop=focalpoint&fit=crop&h=460&q=60&w=640'),
          Text(recipe.name),
          if (recipe.description != null) Text(recipe.description!),
          if (recipe.duration != null) Text(recipe.duration.toString()),
        ],
      )),
    );
  }
}