import 'package:flutter/material.dart';
import 'package:my_web/constants.dart';
import 'package:my_web/screens/about.dart';
import 'package:my_web/screens/contacts.dart';
import 'package:my_web/screens/projects.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(),
            child: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile1.jpg',
                  fit: BoxFit.fill,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'ABOUT ME',
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            onTap: () => Navigator.pushNamed(context, About.id),
          ),
          ListTile(
            title: const Text(
              'PROJECTS',
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            onTap: () => Navigator.pushNamed(context, Projects.id),
          ),
          ListTile(
            title: const Text(
              'CONTACTS',
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            onTap: () => Navigator.pushNamed(context, Contacts.id),
          ),
          ListTile(
            title: const Text(
              'Back',
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
