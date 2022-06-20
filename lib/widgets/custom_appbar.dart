import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            onPressed: () => {debugPrint('Notifications Clicked')},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(14.0),
                elevation: 0.0,
                primary: Colors.transparent,
            ),
            child: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 36,
            )
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: SizedBox(
            height: 56.0,
            width: 56.0,
            child: Image.network(
                'https://cdn3d.iconscout.com/3d/free/preview/businessman-holding-cup-5280009-4431882@0.png?w=0&h=700&f=jpeg',
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            )
          ),
        ),
      ],
    );
  }
}
