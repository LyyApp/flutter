
import 'package:flutter/material.dart';

import '../../ToolAndUserDefine/NumDefine.dart';

class FrontPageController extends StatefulWidget {
  @override
  _FrontPageControllerState createState() => _FrontPageControllerState();
}

class _FrontPageControllerState extends State<FrontPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FontAndColor.WhiteColor,
      body: Text("首页"),
    );
  }
}
