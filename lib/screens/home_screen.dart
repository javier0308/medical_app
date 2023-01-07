import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rest_certus/color.dart';
import 'package:rest_certus/widgets/doctor_section.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List catNames = [
      'Dental',
      'Heart',
      'Eye',
      'Brain',
      'Ear',
    ];
    List<Icon> catIcons = const [
      Icon(MdiIcons.toothOutline, color: pColor, size: 30),
      Icon(MdiIcons.heartPlus, color: pColor, size: 30),
      Icon(MdiIcons.eye, color: pColor, size: 30),
      Icon(MdiIcons.brain, color: pColor, size: 30),
      Icon(MdiIcons.earHearing, color: pColor, size: 30),
    ];
    return Material(
      color: const Color(0xffd9e4ee),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height / 3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    pColor.withOpacity(0.8),
                    pColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/doctor1.jpg'),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: wColor,
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          'Hi, Programmer',
                          style: TextStyle(
                            color: wColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Your health is our\nFirst Priority',
                          style: TextStyle(
                              color: wColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 20),
                          width: size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: wColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: sdColor,
                                blurRadius: 3,
                                spreadRadius: 3,
                              )
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search here...',
                                hintStyle: TextStyle(
                                  color: bColor.withOpacity(0.5),
                                ),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  size: 25,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: bColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: catNames.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                color: Color(0xfff2f8ff),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: sdColor,
                                      blurRadius: 4,
                                      spreadRadius: 2)
                                ],
                              ),
                              child: Center(
                                child: catIcons[index],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              catNames[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: bColor.withOpacity(0.7),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Recomended Doctors',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: bColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  const DoctorSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
