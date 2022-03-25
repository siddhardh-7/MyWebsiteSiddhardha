import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_web/components/arrow_nav.dart';
import 'package:my_web/components/nav_bar.dart';
import 'package:my_web/screens/contacts.dart';

import '../constants.dart';
import 'about.dart';

class Projects extends StatefulWidget {
  static String id = "projectsPage";

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 900) {
        return const DesktopProjects();
      } else {
        return const MobileProjects();
      }
    });
  }
}

class DesktopProjects extends StatefulWidget {
  const DesktopProjects({Key? key}) : super(key: key);

  @override
  State<DesktopProjects> createState() => _DesktopProjectsState();
}

class _DesktopProjectsState extends State<DesktopProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavBar(),
            SizedBox(
              height: 30.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                    child: ArrowNav(
                        upArrowString: About.id, downArrowString: Contacts.id)),
                Column(
                  children: <Widget>[
                    ProjectTile(
                      projectName: "ProjectName",
                      projectUrlString: "assets/images/profile2.jpg",
                      onPressed: () {},
                      projectDescription:
                          "scervbnopu809oiuyrfjygj;ovliuybunumpk[l;p[lkjhgtfghuioplmnbvcvd8b98n708n[p;olikufudrcygnom'j[p9koi",
                    ),
                    ProjectTile(
                      projectName: "ProjectName",
                      projectUrlString: "assets/images/profile2.jpg",
                      onPressed: () {},
                      projectDescription:
                          "scervbnopu809oiuyrfjygj;ovliuybunumpk[l;p[lkjhgtfghuioplmnbvcvd8b98n708n[p;olikufudrcygnom'j[p9koi",
                    ),
                    ProjectTile(
                      projectName: "ProjectName",
                      projectUrlString: "assets/images/profile2.jpg",
                      onPressed: () {},
                      projectDescription:
                          "scervbnopu809oiuyrfjygj;ovliuybunumpk[l;p[lkjhgtfghuioplmnbvcvd8b98n708n[p;olikufudrcygnom'j[p9koi",
                    ),
                    ProjectTile(
                      projectName: "ProjectName",
                      projectUrlString: "assets/images/profile2.jpg",
                      onPressed: () {},
                      projectDescription:
                          "scervbnopu809oiuyrfjygj;ovliuybunumpk[l;p[lkjhgtfghuioplmnbvcvd8b98n708n[p;olikufudrcygnom'j[p9koi",
                    ),
                    ProjectTile(
                      projectName: "ProjectName",
                      projectUrlString: "assets/images/profile2.jpg",
                      onPressed: () {},
                      projectDescription:
                          "scervbnopu809oiuyrfjygj;ovliuybunumpk[l;p[lkjhgtfghuioplmnbvcvd8b98n708n[p;olikufudrcygnom'j[p9koi",
                    ),
                  ],
                ),
                SizedBox(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

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
            margin: EdgeInsets.fromLTRB(8.0, 10.0, 35.0, 10.0),
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
              Container(
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

class MobileProjects extends StatefulWidget {
  const MobileProjects({Key? key}) : super(key: key);

  @override
  State<MobileProjects> createState() => _MobileProjectsState();
}

class _MobileProjectsState extends State<MobileProjects> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
