import 'package:flutter/material.dart';
import '../constants.dart';

AppBar MobileAppBar() {
  return AppBar(
    backgroundColor: kBackgroundColor,
    leading: const Padding(
      padding: EdgeInsets.all(15.0),
      child: Text(
        "S",
        style: TextStyle(
          fontSize: 27.0,
          fontFamily: "Anurati",
        ),
      ),
    ),
    actions: [
      Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: () => Scaffold.of(context).openEndDrawer(),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
      ),
    ],
  );
}
