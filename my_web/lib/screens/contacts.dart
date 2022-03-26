import 'package:flutter/material.dart';
import 'package:my_web/components/arrow_nav.dart';
import 'package:my_web/components/mobile_app_bar.dart';
import 'package:my_web/components/nav_bar.dart';
import 'package:my_web/screens/projects.dart';

class Contacts extends StatefulWidget {
  static String id = "contactsPage";

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ArrowNav(upArrowString: Projects.id, downArrowString: ""),
                Container(),
                SizedBox(),
              ],
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
