
import 'package:flutter/material.dart';

//Models
import '../models/recipes.dart';

class RecipeCarousel extends StatelessWidget {
  final Recipe recipe;

  const RecipeCarousel({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {
        Navigator.pushNamed(context, '/recipe');
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.network(
              recipe.imgURL,
              fit: BoxFit.cover,
              width: 260.0,
              height: 360.0,
            ),
          ),
          const SizedBox(height: 20.0,),
          Text(
            recipe.title, 
            style: const TextStyle(
              fontSize: 20.0, 
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
