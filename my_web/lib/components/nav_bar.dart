import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/about.dart';
import '../screens/projects.dart';
import '../screens/contacts.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: const Text(
            "S",
            style: TextStyle(
              fontSize: 50.0,
              fontFamily: "Anurati",
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            NavTextButton(
              navString: About.id,
              buttonName: "ABOUT ME",
            ),
            NavTextButton(
              navString: Projects.id,
              buttonName: "PROJECTS",
            ),
            NavTextButton(
              navString: Contacts.id,
              buttonName: "CONTACTS",
            ),
          ],
        ),
        const SizedBox(
          width: 40.0,
        ),
      ],
    );
  }
}

class NavTextButton extends StatelessWidget {
  const NavTextButton({required this.navString, required this.buttonName});

  final String navString;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, navString);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          buttonName,
          style: const TextStyle(
            color: kTextColor,
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }
}
