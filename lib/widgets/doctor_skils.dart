import 'package:flutter/material.dart';
import 'package:rest_certus/color.dart';

class DoctorSkills extends StatelessWidget {
  final String tittle, subTitle;
  const DoctorSkills({
    Key? key,
    required this.tittle,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          tittle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: wColor,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          subTitle,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: wColor),
        ),
      ],
    );
  }
}
