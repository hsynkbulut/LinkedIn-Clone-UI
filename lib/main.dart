import 'package:flutter/material.dart';
import 'ui/widgets/custom_bottom_navbar.dart';
import 'themes/custom_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkedIn UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: CustomColors.primaryColor), //const Color(0xFF034AD6)
        useMaterial3: true,
      ),
      home: const CustomBottomNavBar(),
    );
  }
}
