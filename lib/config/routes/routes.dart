import 'package:flutter/material.dart';
// Pages
import 'package:foodka_app/pages/pages.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/':
        return HomePage.route();
      case '/recipe':
        return RecipePage.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
      ),
    );
  }
}
