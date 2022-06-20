import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:foodka_app/models/categories.dart';
import 'package:foodka_app/models/recipes.dart';
import 'package:foodka_app/widgets/custom_navbar.dart';
import 'package:foodka_app/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color.fromARGB(255,244,244,248),
      bottomNavigationBar: const CustomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[400],
        onPressed: () => {},
        child: const Icon(
          Icons.add
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 0.0),
                  child: Column(
                    children: const [
                      CustomAppBar(),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Foodka',
                                style: TextStyle(
                                    fontSize: 36.0,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Playfair'
                                ),
                              ),
                              Text(
                                'Find thousands of popular recipes',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 20.0,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: CategoryCarousel(categories: Category.categories)
                    ),
                    const SizedBox(height: 20.0,),
                    SizedBox(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 0.86,
                          viewportFraction: 0.72,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          enableInfiniteScroll: false,
                        ),
                        items: Recipe.recipes.map((recipe) => RecipeCarousel(recipe: recipe)).toList()
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
