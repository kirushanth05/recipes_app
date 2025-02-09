import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recipe_app/models/food.dart';

class FoodCategory {
  final String title;

  final String id;

  /// color for the widget in the home screen
  Color color;

  /// avalable food under this category.
  List<Food>? availableRecipe = [];

  FoodCategory({
    required this.title,
    this.color = Colors.green,
    this.availableRecipe,
    required this.id,
  });
}
