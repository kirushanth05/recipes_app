import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:recipe_app/components/custom_drawer.dart';
import 'package:recipe_app/models/food.dart';

class RecipeDetails extends StatefulWidget {
  const RecipeDetails({super.key, required this.recipe, this.onAddFavorites});

  final Food recipe;
  final Function()? onAddFavorites;

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const CustomDrawer(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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

            const Gap(8),

            // image container
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(70),
                    blurRadius: 8,
                    offset: const Offset(2, 2),
                  )
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    widget.recipe.imageUrl ??
                        'https://www.datocms-assets.com/34887/1636118293-food-slider-placeholder.png?crop=focalpoint&fit=crop&h=460&q=60&w=640',
                  ),
                ),
              ),
            ),

            // title text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.recipe.name,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      widget.recipe.isFavorite = !widget.recipe.isFavorite;
                    });

                    if (widget.onAddFavorites != null) {
                      widget.onAddFavorites!();
                    }
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: !widget.recipe.isFavorite
                        ? Colors.grey.shade400
                        : Colors.red,
                  ),
                ),
              ],
            ),

            // duration and description
            if (widget.recipe.duration != null)
              Text('Duration: ${widget.recipe.duration.toString()} min'),
            if (widget.recipe.description != null)
              Text(widget.recipe.description!),

            // procedure
            if (widget.recipe.procedure.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: widget.recipe.procedure.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child:
                        Text('${index + 1}. ${widget.recipe.procedure[index]}'),
                  ),
                ),
              ),
            // if (recipe.procedure.isNotEmpty)
            //   ...recipe.procedure.map(
            //     (procedure) => Padding(
            //       padding: const EdgeInsets.only(top: 8),
            //       child: Text('・ $procedure'),
            //     ),
            //   ),
          ],
        ),
      )),
    );
  }
}
