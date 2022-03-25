import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_web/components/side_bar_menu.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_web/components/gradient_test.dart';
import '../components/arrow_nav.dart';
import '../components/mobile_app_bar.dart';
import '../components/nav_bar.dart';
import 'about.dart';
import '../constants.dart';

class Home extends StatefulWidget {
  static String id = "homePage";

  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 900) {
        return const DeskTopHome();
      } else {
        return const MobileHome();
      }
    });
  }
}

class DeskTopHome extends StatefulWidget {
  const DeskTopHome({Key? key}) : super(key: key);

  @override
  State<DeskTopHome> createState() => _DeskTopHomeState();
}

class _DeskTopHomeState extends State<DeskTopHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF010305),
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              child: const Image(
                image: AssetImage("assets/images/profile2.jpg"),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: NavBar(),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ArrowNav(
                    upArrowString: '',
                    downArrowString: About.id,
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: const FittedBox(
                      child: Text(
                        "S",
                        style: TextStyle(
                          fontSize: 150.0,
                          fontFamily: "Anurati",
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "HI , IT'S",
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 69.0,
                            ),
                          ),
                          GradientText(
                            "SIDDHARDHA",
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(57, 206, 192, 0.0),
                                Color.fromRGBO(57, 206, 192, 18.0),
                                Color.fromRGBO(57, 206, 192, 100.0),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            style: TextStyle(
                              color: kTextColor,
                              fontFamily: "Coda",
                              fontSize: 92.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Contact : ",
                    ),
                    const SizedBox(
                      width: 18.0,
                    ),
                    InkWell(
                      child:
                          SvgPicture.asset("assets/images/logo-instagram.svg"),
                      onTap: () =>
                          launch('https://www.instagram.com/_its_siddhardh_/'),
                    ),
                    const SizedBox(
                      width: 18.0,
                    ),
                    InkWell(
                      child: SvgPicture.asset("assets/images/logo-github.svg"),
                      onTap: () => launch('https://github.com/siddhardh-7'),
                    ),
                    const SizedBox(
                      width: 18.0,
                    ),
                    InkWell(
                      child:
                          SvgPicture.asset("assets/images/logo-linkedin.svg"),
                      onTap: () => launch(
                          'https://www.linkedin.com/in/siddhardha-darsi-078694223/'),
                    ),
                    const SizedBox(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SideBarMenu(),
      appBar: MobileAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(30.0),
                width: 240.0,
                height: 240 / 0.65217391304,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/profile2.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "HI , IT'S",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(),
                    GradientText(
                      "SIDDHARDHA",
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(57, 206, 192, 0.0),
                          Color.fromRGBO(57, 206, 192, 18.0),
                          Color.fromRGBO(57, 206, 192, 100.0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      style: TextStyle(
                        color: kTextColor,
                        fontFamily: "Coda",
                        fontSize: 58.0,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
