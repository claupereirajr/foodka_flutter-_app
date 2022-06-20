import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  final String title;
  final String imgURL;

  const Recipe({
    required this.title,
    required this.imgURL
  });

  @override
  List<Object?> get props {
    return [title, imgURL];
  }

  static List<Recipe> recipes = [
    const Recipe(title: 'Mexican Mamai', imgURL: 'https://images.unsplash.com/photo-1519996409144-56c88c9aa612?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
    const Recipe(title: 'Mexican Corn Soup', imgURL: 'https://images.unsplash.com/photo-1579640873954-766bf0235bf3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80'),
    const Recipe(title: 'Tres Leches Cake', imgURL: 'https://images.unsplash.com/photo-1619868208769-66d64945f214?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
    const Recipe(title: 'Beef Chilli Taco', imgURL: 'https://images.unsplash.com/photo-1615870216519-2f9fa575fa5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80'),
    const Recipe(title: 'Mexican Mamai 2', imgURL: 'https://images.unsplash.com/photo-1519996409144-56c88c9aa612?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
    const Recipe(title: 'Mexican Corn Soup 3', imgURL: 'https://images.unsplash.com/photo-1579640873954-766bf0235bf3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80'),
    const Recipe(title: 'Tres Leches Cake 4', imgURL: 'https://images.unsplash.com/photo-1619868208769-66d64945f214?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
    const Recipe(title: 'Beef Chilli Taco 5', imgURL: 'https://images.unsplash.com/photo-1615870216519-2f9fa575fa5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80'),
  ];
}
