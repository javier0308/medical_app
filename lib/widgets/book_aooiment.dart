import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../color.dart';

class BookAppoiment extends StatelessWidget {
  const BookAppoiment({
    Key? key,
    required this.textStyle,
  }) : super(key: key);

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dr Looney',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w500, color: pColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Icon(
                MdiIcons.heartPulse,
                color: Colors.red,
                size: 28,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Surgeon',
                style: TextStyle(fontSize: 17, color: bColor.withOpacity(0.6)),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Deserunt ut deserunt proident nostrud ut tempor consectetur. Nulla quis ea elit cillum mollit dolor non aliquip sint.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: bColor.withOpacity(0.6),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Book Date',
            style: textStyle,
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                    decoration: BoxDecoration(
                      color: index == 1 ? pColor : const Color(0xfff2f8ff),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: sdColor,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${index + 8}',
                          style: TextStyle(
                            fontSize: 17,
                            color:
                                index == 1 ? wColor : bColor.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'JAN',
                          style: TextStyle(
                            fontSize: 17,
                            color:
                                index == 1 ? wColor : bColor.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Book Time',
            style: textStyle,
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                      color: index == 2 ? pColor : const Color(0xfff2f8ff),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: sdColor,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Center(
                    child: Text(
                      '${index + 8}: 00 AM',
                      style: TextStyle(
                        fontSize: 17,
                        color: index == 2 ? wColor : bColor.withOpacity(0.6),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: pColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: const Text(
                'Book Appointment',
                style: TextStyle(
                    color: wColor, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
