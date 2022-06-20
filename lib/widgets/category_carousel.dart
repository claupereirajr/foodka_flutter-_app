import 'package:flutter/material.dart';

import 'package:foodka_app/models/categories.dart';
import 'category_btn.dart';

class CategoryCarousel extends StatelessWidget {
  final List<Category> categories;

  const CategoryCarousel({
    Key? key,
    required this.categories
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.0,
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CategoryBtn(category: categories[index]),
            );
          }
      ),
    );
  }
}
