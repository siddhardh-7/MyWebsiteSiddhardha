import 'package:flutter/material.dart';

import '../constants.dart';

class DesktopProjectTile extends StatelessWidget {
  const DesktopProjectTile(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.width * 0.25,
            margin: const EdgeInsets.all(18.0),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                projectName,
                style: const TextStyle(
                  fontSize: 50.0,
                  color: kTextColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.play_circle_outline_outlined,
                        color: kTextColor,
                      ),
                      SizedBox(
                        width: 15.0,
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
              const SizedBox(
                height: 20.0,
              ),
              const Divider(
                indent: 100.0,
                endIndent: 100.0,
                color: kTextColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
