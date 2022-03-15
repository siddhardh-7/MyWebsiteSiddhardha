import 'package:flutter/material.dart';

import '../constants.dart';

class EducationBox extends StatelessWidget {
  EducationBox(
      {required this.education,
      required this.completedYear,
      required this.educationArea,
      required this.value});

  final String education;
  final String completedYear;
  final String educationArea;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              education,
              style: const TextStyle(
                fontSize: 39.0,
                color: kTextColor,
              ),
            ),
            Text(
              completedYear,
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * value - 84),
              child: Text(
                educationArea,
                style: const TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 30.0,
            )
          ],
        ),
      ],
    );
  }
}
