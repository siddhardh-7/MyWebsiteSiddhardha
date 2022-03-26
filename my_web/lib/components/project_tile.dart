import 'package:flutter/material.dart';

import '../constants.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile(
      {required this.projectName,
      required this.projectDescription,
      required this.projectUrlString,
      required this.onPressed});

  final String projectName;
  final String projectDescription;
  final String projectUrlString;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.width * 0.125,
            margin: const EdgeInsets.fromLTRB(8.0, 10.0, 35.0, 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(projectUrlString),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
              color: kBackgroundColor,
            ),
            // child: Container(
            //   alignment: Alignment.bottomCenter,
            //   child: Text(
            //     "PROJECT NAME",
            //     style: TextStyle(
            //       fontSize: 20.0,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),
          ),
          const SizedBox(
            width: 150.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                projectName,
                style: const TextStyle(
                  fontSize: 50.0,
                  color: kTextColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text(
                  projectDescription,
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: onPressed(),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.play_circle_outline_outlined,
                        color: kTextColor,
                      ),
                      Text(
                        "Click Here",
                        style: TextStyle(
                          color: kTextColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
