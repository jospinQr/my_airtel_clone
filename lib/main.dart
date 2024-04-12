import 'package:flutter/material.dart';
import 'package:my_airtel_clone/ui/screen/DashBord.dart';
import 'package:my_airtel_clone/ui/screen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(0XFF, 0X00, 0X00, 0X80),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
