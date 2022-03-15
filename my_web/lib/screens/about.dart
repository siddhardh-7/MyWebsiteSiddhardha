import 'package:flutter/material.dart';
import 'package:my_web/components/mobile_app_bar.dart';
import 'package:my_web/components/side_bar_menu.dart';
import 'package:my_web/constants.dart';
import 'package:my_web/screens/projects.dart';
import '../components/about_details.dart';
import '../components/nav_bar.dart';
import '../components/arrow_nav.dart';
import '../components/mobile_app_bar.dart';
import '../components/side_bar_menu.dart';
import 'home.dart';

class About extends StatefulWidget {
  static String id = "aboutPage";

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 900) {
        return const DeskTopAbout();
      } else {
        return const MobileAbout();
      }
    });
  }
}

class DeskTopAbout extends StatefulWidget {
  const DeskTopAbout({Key? key}) : super(key: key);

  @override
  State<DeskTopAbout> createState() => _DeskTopAboutState();
}

class _DeskTopAboutState extends State<DeskTopAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const NavBar(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ArrowNav(
                  upArrowString: Home.id,
                  downArrowString: Projects.id,
                ),
                Container(
                  width: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kBackgroundColor,
                  ),
                  child: Image.asset(
                    "assets/images/profile1.jpg",
                  ),
                ),
                AboutDetails(
                  value: 0.5,
                ),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileAbout extends StatefulWidget {
  const MobileAbout({Key? key}) : super(key: key);

  @override
  State<MobileAbout> createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SideBarMenu(),
      appBar: MobileAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                color: kBackgroundColor,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/profile1.jpg",
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              AboutDetails(
                value: 0.8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
