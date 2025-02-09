import 'package:flutter/material.dart';
import 'package:recipe_app/models/food_category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
    this.category, {
    super.key,
    this.onTap,
  });

  final FoodCategory category;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.circular(8),
            color: category.color,
          ),
          child: Center(
            child: Text(
              category.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}