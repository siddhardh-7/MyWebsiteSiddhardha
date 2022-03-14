import 'package:flutter/material.dart';

import '../constants.dart';

class ArrowNav extends StatelessWidget {
  const ArrowNav({required this.upArrowString, required this.downArrowString});

  final String upArrowString;
  final String downArrowString;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        UpArrowIcon(
          navString: upArrowString,
        ),
        DownArrowIcon(
          navString: downArrowString,
        ),
      ],
    );
  }
}

class UpArrowIcon extends StatelessWidget {
  const UpArrowIcon({required this.navString});

  final String navString;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      child: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, navString);
        },
        splashColor: Colors.white,
        icon: const Icon(
          Icons.arrow_upward_rounded,
          color: kTextColor,
        ),
        hoverColor: kTextColor,

        // icon: Image.asset(
        //   "assets/images/UpArrow.png",
        // ),
      ),
    );
  }
}

class DownArrowIcon extends StatelessWidget {
  const DownArrowIcon({required this.navString});

  final String navString;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      child: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, navString);
        },
        splashColor: Colors.white,
        icon: const Icon(
          Icons.arrow_downward_rounded,
          color: kTextColor,
        ),
        hoverColor: kTextColor,

        // icon: Image.asset(
        //   "assets/images/UpArrow.png",
        // ),
      ),
    );
  }
}
