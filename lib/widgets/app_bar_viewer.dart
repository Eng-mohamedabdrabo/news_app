import 'package:flutter/material.dart';

class AppBarViewer extends StatelessWidget {
  const AppBarViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        children: const <TextSpan>[
          TextSpan(
            text: 'News',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: 'Cloud',
            style: TextStyle(
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
