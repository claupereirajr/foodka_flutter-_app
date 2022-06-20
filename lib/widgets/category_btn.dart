import 'package:flutter/material.dart';
import 'package:foodka_app/models/categories.dart';

class CategoryBtn extends StatelessWidget {
  final Category category;

  const CategoryBtn({
    Key? key,
    required this.category
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(category.id == 0){
      return ElevatedButton(
        onPressed: () => {debugPrint('Category Button')},
        style: ElevatedButton.styleFrom(
          primary: Colors.red[400],
          elevation: 0.0,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          minimumSize: const Size(100, 64),
        ),
        child: Text(
          category.name,
          style: const TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold, letterSpacing: 2.0),
        )
      );
    } else {
      return ElevatedButton(
        onPressed: () => {debugPrint('Category Button')},
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 0.0,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
          side: const BorderSide(width: 2.0, color:Colors.amber,),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          minimumSize: const Size(100, 46),
        ),
        child: Text(
          category.name,
          style: TextStyle(color: Colors.grey[800], fontSize: 16.0, fontWeight: FontWeight.bold, letterSpacing: 2.0),
        )
      );
    }
  }
}