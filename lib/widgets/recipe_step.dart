
import 'package:flutter/material.dart';
import 'package:foodka_app/models/recipe_desc.dart';

class RecipeStep extends StatelessWidget {
  final RecipeDesc recipeDesc;

  const RecipeStep({Key? key, required this.recipeDesc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.0,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    blurStyle: BlurStyle.normal)
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(recipeDesc.imgURL)
            ),
          ),
          Positioned(
            top: 10.0,
            left: -20.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Container(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0, horizontal:15.0),
                  child: Text(
                    recipeDesc.step,
                    style: const TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          const Icon(Icons.play_arrow, color: Colors.white, size: 46.0,),
        ],
      ),
    );
  }
}
