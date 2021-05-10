import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_shoes/constants.dart';
import 'package:local_shoes/home/component/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    actions: <Widget>[
      IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg", color: kTextColor),
          onPressed: () {}),
      IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"), onPressed: () {})
    ],
  );
}
