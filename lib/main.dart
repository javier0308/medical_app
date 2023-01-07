import 'package:flutter/material.dart';
import 'package:rest_certus/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical UI',
      initialRoute: WelcomeScreen.route,
      routes: {
        WelcomeScreen.route: (context) => const WelcomeScreen(),
        HomeScreen.route: (context) => const HomeScreen(),
        AppointScreen.route: (context) => const AppointScreen(),
      },
    );
  }
}
