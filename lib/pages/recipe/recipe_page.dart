import 'package:flutter/material.dart';
import 'package:foodka_app/models/recipe_desc.dart';
import 'package:foodka_app/widgets/recipe_instructions.dart';

class RecipePage extends StatelessWidget {
  static const String routeName = '/recipe';
  const RecipePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const RecipePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color.fromARGB(255, 244, 244, 248),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                fit: StackFit.loose,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0)),
                    child: Image.network(
                      fit: BoxFit.cover,
                      width: 480.0,
                      'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                    ),
                  ),
                  Positioned(
                    bottom: -40.0,
                    top: 260.0,
                    left: 0.0,
                    right: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 0.0),
                      child: SizedBox(
                        height: 140.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10.0,
                                    spreadRadius: 10.0,
                                    blurStyle: BlurStyle.normal)
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'Mexican Mamai',
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(Icons.person_outline),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              '2.2k',
                                              style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 40.0,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(Icons.star_border),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              '8.0',
                                              style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 40.0,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(Icons.show_chart),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              '81%',
                                              style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    'Mexican Mamai Recipe',
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Playfair'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Mussum Ipsum, cacilds vidis litro abertis. Atirei o pau no gatis, per gatis num morreus.A ordem dos tratores não altera o pão duris.Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget.Diuretics paradis num copo é motivis de denguis.',
                    style: TextStyle(fontSize: 16.0, height: 1.6),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: RecipeInstruction(recipeDesc: RecipeDesc.recipeDesc,),
            ),
          )
        ],
      )),
    );
  }
}
