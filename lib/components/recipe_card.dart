import 'package:flutter/material.dart';
import 'package:recipe_app/models/food.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key, required this.food, this.onTap});

  final Food food;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(food.imageUrl ??
                      'https://www.datocms-assets.com/34887/1636118293-food-slider-placeholder.png?crop=focalpoint&fit=crop&h=460&q=60&w=640'),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                // color: Colors.black.withValues(alpha: 0.5),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withAlpha(90),
                    Colors.black.withAlpha(0),
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  if (food.duration != null)
                    Text(
                      'Duration: ${food.duration} mins',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  // if (food.description != null)
                  //   Expanded(
                  //     child: Text(
                  //       food.description!,
                  //       style: const TextStyle(
                  //         height: 1.2,
                  //         color: Colors.white,
                  //         fontSize: 14,
                  //         fontWeight: FontWeight.w500,
                  //       ),
                  //       maxLines: 4,
                  //       overflow: TextOverflow.ellipsis,
                  //     ),
                  //   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
