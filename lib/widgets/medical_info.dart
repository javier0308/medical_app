import 'package:flutter/material.dart';
import 'package:rest_certus/color.dart';
import 'package:rest_certus/widgets/widgets.dart';

class MedicalInfo extends StatelessWidget {
  const MedicalInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height / 2.2,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/doctor1.jpg'), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            pColor.withOpacity(0.9),
            pColor.withOpacity(0),
            pColor.withOpacity(0),
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeadingTrailing(
                    icon: Icons.arrow_back,
                    ontap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const LeadingTrailing(
                    icon: Icons.favorite_outline,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  DoctorSkills(
                    tittle: 'Patients',
                    subTitle: '1.8k',
                  ),
                  DoctorSkills(
                    tittle: 'Experience',
                    subTitle: '10 yr',
                  ),
                  DoctorSkills(
                    tittle: 'Rating',
                    subTitle: '4.9',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
