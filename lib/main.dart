import 'package:fitness_dashboard_ui/const/constant.dart';
import 'package:fitness_dashboard_ui/screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          brightness: Brightness.dark),
      home: const MainScreen(),
    );
  }
}
