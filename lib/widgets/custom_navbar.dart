import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(
                Icons.show_chart,
                color: Colors.grey,
                size: 24.0,
              ),
              onPressed: () {
                debugPrint('menu-item home');
              }),
            IconButton(
              icon: const Icon(
                Icons.menu_book,
                color: Colors.grey, 
                size: 24.0,
              ),
              onPressed: () {
                debugPrint('menu-item home');
              }),
            const SizedBox(width: 24.0,),
            IconButton(
              icon: const Icon(
                Icons.live_tv,
                color: Colors.grey, 
                size: 24.0,
              ),
              onPressed: () {
                debugPrint('menu-item home');
              }),
            IconButton(
              icon: const Icon(
                Icons.bookmark_outline,
                color: Colors.grey, 
                size: 24.0,
              ),
              onPressed: () {
                debugPrint('menu-item home');
              }),
          ],
        ),
      ),
    );
  }
}