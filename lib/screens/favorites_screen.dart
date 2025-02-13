import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:recipe_app/components/custom_drawer.dart';
import 'package:recipe_app/components/custom_grid.dart';
import 'package:recipe_app/components/recipe_card.dart';
import 'package:recipe_app/models/food.dart';
import 'package:recipe_app/data/sample_categories.dart';
import 'package:recipe_app/routes/router_functions.dart';
import 'package:recipe_app/screens/recipe_details.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // title and the menu icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Favorites',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                ),
                const Gap(8),
                Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                  ),
                ),
              ],
            ),

            // list of favorite recipes
            CustomGrid(
              child: (food) => RecipeCard(
                food: food,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeDetails(
                        recipe: food,
                        onAddFavorites: () {
                          setState(() {});
                        },
                      ),
                    ),
                  );
                },
              ),
              items: getFavorites(),
            ),
          ],
        ),
      )),
    );
  }

  List<Food> getFavorites() {
    List<Food> favoriteRecipes = [];

    for (var category in foodCategories) {
      // if the category has no available recipes, or if it is null, skip it
      if (category.availableRecipe == null ||
          category.availableRecipe!.isEmpty) {
        continue;
      }

      for (var recipe in category.availableRecipe!) {
        if (recipe.isFavorite) favoriteRecipes.add(recipe);
      }
    }

    return favoriteRecipes;
  }
}