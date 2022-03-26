import 'package:flutter/material.dart';
import 'package:my_web/components/arrow_nav.dart';
import 'package:my_web/components/desktop_project_tile.dart';
import 'package:my_web/components/mobile_app_bar.dart';
import 'package:my_web/components/nav_bar.dart';
import 'package:my_web/screens/contacts.dart';

import '../components/project_tile.dart';
import 'about.dart';

class Projects extends StatefulWidget {
  static String id = "projectsPage";

  const Projects({Key? key}) : super(key: key);

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
            const NavBar(),
            const SizedBox(
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
                const SizedBox(),
              ],
            )
          ],
        ),
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
    return Scaffold(
      appBar: MobileAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DesktopProjectTile(
              projectName: "ProjectName",
              projectUrlString: "assets/images/profile2.jpg",
              onPressed: () {},
              projectDescription:
                  "scervbnopu809oiuyrfjygj;ovliuybunumpk[l;p[lkjhgtfghuioplmnbvcvd8b98n708n[p;olikufudrcygnom'j[p9koi",
            ),
            DesktopProjectTile(
              projectName: "ProjectName",
              projectUrlString: "assets/images/profile2.jpg",
              onPressed: () {},
              projectDescription:
                  "scervbnopu809oiuyrfjygj;ovliuybunumpk[l;p[lkjhgtfghuioplmnbvcvd8b98n708n[p;olikufudrcygnom'j[p9koi",
            ),
            DesktopProjectTile(
              projectName: "ProjectName",
              projectUrlString: "assets/images/profile2.jpg",
              onPressed: () {},
              projectDescription:
                  "scervbnopu809oiuyrfjygj;ovliuybunumpk[l;p[lkjhgtfghuioplmnbvcvd8b98n708n[p;olikufudrcygnom'j[p9koi",
            ),
            DesktopProjectTile(
              projectName: "ProjectName",
              projectUrlString: "assets/images/profile2.jpg",
              onPressed: () {},
              projectDescription:
                  "scervbnopu809oiuyrfjygj;ovliuybunumpk[l;p[lkjhgtfghuioplmnbvcvd8b98n708n[p;olikufudrcygnom'j[p9koi",
            ),
            DesktopProjectTile(
              projectName: "ProjectName",
              projectUrlString: "assets/images/profile2.jpg",
              onPressed: () {},
              projectDescription:
                  "scervbnopu809oiuyrfjygj;ovliuybunumpk[l;p[lkjhgtfghuioplmnbvcvd8b98n708n[p;olikufudrcygnom'j[p9koi",
            ),
          ],
        ),
      ),
    );
  }
}
