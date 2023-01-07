import 'package:flutter/material.dart';
import 'package:rest_certus/color.dart';

class LeadingTrailing extends StatelessWidget {
  final IconData icon;
  final Function()? ontap;
  const LeadingTrailing({
    Key? key,
    required this.icon,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: const Color(0xfff2f8ff),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: sdColor, blurRadius: 4, spreadRadius: 2)
          ],
        ),
        child: Center(
          child: Icon(
            icon,
            color: pColor,
            size: 28,
          ),
        ),
      ),
    );
  }
}
