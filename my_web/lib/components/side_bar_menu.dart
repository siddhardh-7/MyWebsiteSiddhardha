import 'package:flutter/material.dart';
import 'package:my_web/constants.dart';
import 'package:my_web/screens/about.dart';
import 'package:my_web/screens/contacts.dart';
import 'package:my_web/screens/projects.dart';

class SideBarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(),
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
            title: Text(
              'ABOUT ME',
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            onTap: () => Navigator.pushNamed(context, About.id),
          ),
          ListTile(
            title: Text(
              'PROJECTS',
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            onTap: () => Navigator.pushNamed(context, Projects.id),
          ),
          ListTile(
            title: Text(
              'CONTACTS',
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            onTap: () => Navigator.pushNamed(context, Contacts.id),
          ),
          ListTile(
            title: Text(
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
