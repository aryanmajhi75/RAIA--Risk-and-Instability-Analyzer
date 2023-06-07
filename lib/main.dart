import 'package:flutter/material.dart';
import 'package:raia/customWidgets/CustomBottomNavbar.dart';
import 'package:raia/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: const customBottomNavbar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
