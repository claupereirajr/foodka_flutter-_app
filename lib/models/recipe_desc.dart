import 'package:equatable/equatable.dart';

class RecipeDesc extends Equatable {
  final String step;
  final String imgURL;

  const RecipeDesc({
    required this.step,
    required this.imgURL
  });

  @override
  List<Object?> get props {
    return [step, imgURL];
  }

  static List<RecipeDesc> recipeDesc = [
    const RecipeDesc(step: '1', imgURL: 'https://images.unsplash.com/photo-1466637574441-749b8f19452f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
    const RecipeDesc(step: '2', imgURL: 'https://images.unsplash.com/photo-1604909053259-c5952d9a0feb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
    const RecipeDesc(step: '3', imgURL: 'https://images.unsplash.com/photo-1601226809816-b8c32440158a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
    const RecipeDesc(step: '4', imgURL: 'https://images.unsplash.com/photo-1516714435131-44d6b64dc6a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
  ];
}
