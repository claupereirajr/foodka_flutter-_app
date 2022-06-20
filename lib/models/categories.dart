import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;

  const Category({required this.id, required this.name});

  @override
  List<Object?> get props {
    return [id, name];
  }

  static List<Category> categories = [
    const Category(id: 0, name: 'Mexican'),
    const Category(id: 1, name: 'Chinese'),
    const Category(id: 2, name: 'Indian'),
    const Category(id: 3, name: 'Brazilian BBQ'),
    const Category(id: 4, name: 'Mexican'),
    const Category(id: 5, name: 'Chinese'),
    const Category(id: 6, name: 'Indian'),
    const Category(id: 7, name: 'Brazilian BBQ'),
    const Category(id: 8, name: 'Mexican'),
    const Category(id: 9, name: 'Chinese'),
    const Category(id: 10, name: 'Indian'),
    const Category(id: 11, name: 'Brazilian BBQ'),
  ];
}
