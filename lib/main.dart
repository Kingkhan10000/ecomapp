// Entry point
import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(MyEcomApp());
}

class MyEcomApp extends StatelessWidget {
  const MyEcomApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home is an property
      home: HomeScreen(),
    );
  }
}

