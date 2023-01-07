import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rest_certus/color.dart';

import '../widgets/widgets.dart';

class AppointScreen extends StatelessWidget {
  static const String route = '';
  const AppointScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var textStyle = TextStyle(
        fontSize: 18,
        color: bColor.withOpacity(0.6),
        fontWeight: FontWeight.w600);
    return Material(
      color: const Color(0xffd9e4ee),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MedicalInfo(size: size),
            const SizedBox(
              height: 10,
            ),
            BookAppoiment(textStyle: textStyle)
          ],
        ),
      ),
    );
  }
}
