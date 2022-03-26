import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import 'package:my_web/components/mobile_app_bar.dart';
import 'package:my_web/constants.dart';
import 'package:my_web/components/nav_bar.dart';
import '../components/glassmoriphisim.dart';

final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();

Future sendEMail() async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");

  const serviceId = "service_qsw4oaa";
  const templateId = "template_8yb8anq";
  const userId = "cpi1HBO6so_QSZ-1d";

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encoder({
      "service_id": serviceId,
      "template_id": templateId,
      "user_id": userId,
      "template_params": {
        "user_name": nameController.text,
        "user_email": emailController.text,
        "user_subject": subjectController.text,
        "message": messageController.text,
      },
    }),
  );
  return response.statusCode;
}

class Contacts extends StatefulWidget {
  static String id = "contactsPage";

  Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 900) {
        return const DeskTopContact();
      } else {
        return const MobileContact();
      }
    });
  }
}

class DeskTopContact extends StatefulWidget {
  const DeskTopContact({Key? key}) : super(key: key);

  @override
  State<DeskTopContact> createState() => _DeskTopContactState();
}

class _DeskTopContactState extends State<DeskTopContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const NavBar(),
            Center(
              child: Container(
                margin: const EdgeInsets.all(30.0),
                width: MediaQuery.of(context).size.width * 0.65,
//height: MediaQuery.of(context).size.height * 0.80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/background.jpeg"),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "CONTACT ME",
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                      Glassmoriphism(
                        child: GestureDetector(
                          child: ListTile(
                            leading: SvgPicture.asset(
                                "assets/images/logo-instagram.svg"),
                            title: const Text("INSTAGRAM"),
                          ),
                          onTap: () => launch(
                              'https://www.instagram.com/_its_siddhardh_/'),
                        ),
                      ),
                      Glassmoriphism(
                        child: GestureDetector(
                          child: ListTile(
                            leading: SvgPicture.asset(
                                "assets/images/logo-github.svg"),
                            title: const Text("GITHUB"),
                          ),
                          onTap: () => launch('https://github.com/siddhardh-7'),
                        ),
                      ),
                      Glassmoriphism(
                        child: GestureDetector(
                          child: ListTile(
                            leading: SvgPicture.asset(
                                "assets/images/logo-linkedin.svg"),
                            title: const Text("LINKEDIN"),
                          ),
                          onTap: () => launch(
                              'https://www.linkedin.com/in/siddhardha-darsi-078694223/'),
                        ),
                      ),
                      const Divider(
                        indent: 50.0,
                        endIndent: 50.0,
                        color: Colors.white,
                      ),
                      Glassmoriphism(
                        child: Container(
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 7.5),
                          child: TextFormField(
                            controller: nameController,
                            decoration: const InputDecoration(
                              hintText: "Name ",
                              labelText: "Name",
                            ),
                          ),
                        ),
                      ),
                      Glassmoriphism(
                        child: Container(
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 7.5),
                          child: TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              hintText: "EMail ",
                              labelText: "EMail",
                            ),
                          ),
                        ),
                      ),
                      Glassmoriphism(
                        child: Container(
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 7.5),
                          child: TextFormField(
                            controller: subjectController,
                            decoration: const InputDecoration(
                              hintText: "Subject ",
                              labelText: "Subject",
                            ),
                          ),
                        ),
                      ),
                      Glassmoriphism(
                        child: Container(
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 7.5),
                          child: TextFormField(
                            controller: messageController,
                            decoration: const InputDecoration(
                              hintText: "Message ",
                              labelText: "Message",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      RaisedButton(
                        onPressed: () {
                          sendEMail();
                        },
                        color: kTextColor,
                        hoverColor: kTextColor,
                        child: const Text(
                          "SEND",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class MobileContact extends StatefulWidget {
  const MobileContact({Key? key}) : super(key: key);

  @override
  State<MobileContact> createState() => _MobileContactState();
}

class _MobileContactState extends State<MobileContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MobileAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(50.0),
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background.jpeg"),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "CONTACT ME",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  Glassmoriphism(
                    child: GestureDetector(
                      child: ListTile(
                        leading: SvgPicture.asset(
                            "assets/images/logo-instagram.svg"),
                        title: const Text("INSTAGRAM"),
                      ),
                      onTap: () =>
                          launch('https://www.instagram.com/_its_siddhardh_/'),
                    ),
                  ),
                  Glassmoriphism(
                    child: GestureDetector(
                      child: ListTile(
                        leading:
                            SvgPicture.asset("assets/images/logo-github.svg"),
                        title: const Text("GITHUB"),
                      ),
                      onTap: () => launch('https://github.com/siddhardh-7'),
                    ),
                  ),
                  Glassmoriphism(
                    child: GestureDetector(
                      child: ListTile(
                        leading:
                            SvgPicture.asset("assets/images/logo-linkedin.svg"),
                        title: const Text("LINKEDIN"),
                      ),
                      onTap: () => launch(
                          'https://www.linkedin.com/in/siddhardha-darsi-078694223/'),
                    ),
                  ),
                  const Divider(
                    indent: 50.0,
                    endIndent: 50.0,
                    color: Colors.white,
                  ),
                  Glassmoriphism(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 7.5),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Name ",
                        ),
                      ),
                    ),
                  ),
                  Glassmoriphism(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 7.5),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "EMail ",
                        ),
                      ),
                    ),
                  ),
                  Glassmoriphism(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 7.5),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Phone ",
                        ),
                      ),
                    ),
                  ),
                  Glassmoriphism(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 7.5),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Message ",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      sendEMail();
                    },
                    color: kTextColor,
                    hoverColor: kTextColor,
                    child: const Text(
                      "SEND",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
