import 'package:flutter/material.dart';
import 'package:foodka_app/models/recipe_desc.dart';
import 'recipe_step.dart';

class RecipeInstruction extends StatelessWidget {
  final List<RecipeDesc> recipeDesc;
  
  const RecipeInstruction({
    Key? key,
    required this.recipeDesc
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: recipeDesc.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 10.0),
              child: RecipeStep(recipeDesc: recipeDesc[index],),
            );
          }
      ),
    );
  }
}
