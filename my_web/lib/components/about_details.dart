import 'package:flutter/material.dart';

import 'education_details.dart';
import 'gradient_test.dart';

class AboutDetails extends StatelessWidget {
  const AboutDetails({required this.value});

  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const LinearTextGradient(
                title: "ABOUT ME",
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * value - 84),
                child: const Text(
                  "I am SIDDHARDHA ,who is interested in new technology .\nI was always a dreamer about the future ........ bha bha bha .......",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const LinearTextGradient(title: "EDUCATION"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EducationBox(
                    educationArea:
                        "GPA : 9.8 \nVIGNAN HIGH SCHOOL ,\nJAGGAYYAPET , ANDHRA PRADESH , \nINDIA.",
                    education: "10 TH",
                    completedYear: "completed on 2018",
                    value: value,
                  ),
                  EducationBox(
                    education: "INTER",
                    completedYear: "2018-2020",
                    educationArea:
                        "GPA : 10.0\nPERCENTAGE : 96.9%,\nNARAYANA JUNIOR COLEGE, \nVIJAYAWADA , ANDHRA PRADESH , \nINDIA.",
                    value: value,
                  ),
                  EducationBox(
                    education: "B.Tech / UG",
                    completedYear: "2020- 2024 (currently studying)",
                    educationArea:
                        "IIITDM KANCHEPURRAM ,\nMelakottaiyur, Nellikuppam Rd, Near Kandigai, Off Vandalur-Kelambakkam Road, Chennai, Tamil Nadu 600127",
                    value: value,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              LinearTextGradient(title: "SKILLS"),
              Text(
                "* C",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                "* C++",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                "* Flutter",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                "* MYSQL",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                "* Figma",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                "* HTML",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                "* Css",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                "* Canva",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                "* Photo Editing",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
