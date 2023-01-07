import 'package:flutter/material.dart';
import 'package:rest_certus/color.dart';
import 'package:rest_certus/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String route = 'welcome';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              pColor.withOpacity(0.8),
              pColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/doctors.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Doctors Online',
              style: TextStyle(
                color: wColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Appoint Your Doctor',
              style: TextStyle(
                color: wColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Material(
              color: wColor,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.route);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: const Text(
                    "Let's Go",
                    style: TextStyle(
                        color: pColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/lined heart.png',
              color: wColor,
              scale: 2,
            )
          ],
        ),
      ),
    );
  }
}
