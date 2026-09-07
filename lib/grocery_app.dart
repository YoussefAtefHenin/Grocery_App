import 'package:flutter/material.dart';

import 'package:grocery_app/screens/onbording_screen.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: OnbordingScreen(),
    );
  }
}
