import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:recipe_app/models/food_category.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<FoodCategory> foodCategories = [
      FoodCategory(title: 'Chinese', color: Colors.amber.shade400),
      FoodCategory(title: 'Italian', color: Colors.blue.shade400),
      FoodCategory(title: 'Indian', color: Colors.red.shade400),
      FoodCategory(title: 'Mexican', color: Colors.orange.shade400),
      FoodCategory(title: 'American', color: Colors.green.shade400),
      FoodCategory(title: 'Japanese', color: Colors.purple.shade400),
      FoodCategory(title: 'French', color: Colors.pink.shade400),
      FoodCategory(title: 'Thai', color: Colors.teal.shade400),
      FoodCategory(title: 'Mediterranean', color: Colors.cyan.shade400),
      FoodCategory(title: 'Spanish', color: Colors.deepOrange.shade400),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            children: [
              // App title
              Text(
                'Recipe App',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey.shade800,
                ),
                // style: GoogleFonts.lato(),
              ),
              const Gap(36),
              // Expanded(
              // child: ListView.builder(
              //   itemCount: foodCategories.length,
              //   itemBuilder: (ctx, index) {
              //     return Padding(
              //         padding: EdgeInsets.symmetric(vertical: 60),
              //         child: Text(foodCategories[index]));
              //   },
              // ),
              // child: ListView(
              //   children: foodCategories
              //       .map((catogory) => Padding(
              //           padding: EdgeInsets.symmetric(vertical: 60),
              //           child: Text(catogory)))
              //       .toList(),
              // ),
              // ),
              Expanded(
                child: GridView(
                  // padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  children: foodCategories
                      .map(
                        (category) => Padding(
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
                            child: Text(category.title),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}