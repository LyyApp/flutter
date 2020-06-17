import 'dart:ui';

import 'package:flutter/material.dart';

import '../../ToolAndUserDefine/NumDefine.dart';
import 'package:my_flutter/HttpRequest/HttpRequest.dart';

import 'package:flutter_boost/flutter_boost.dart';
import '../../HttpModel/Model/LoginInfoModel.dart';
// import '../../Controller/FrontPage/FrontPage.dart';
// import '../../Controller/Login/LoginController.dart';
// import '../../Controller/Setting/SettingController.dart';

import 'package:dio/dio.dart';

class WelcomeController extends StatefulWidget {
  @override
  _WelcomeControllerState createState() => _WelcomeControllerState();
}

class _WelcomeControllerState extends State<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    // getHttp();
    return Scaffold(
      backgroundColor: FontAndColor.WelcomePageBgColor,
      body: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                'images/StartTitle.png',)
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'images/StartIcon.png',
            ),
          ),

          Align(
              alignment: Alignment.centerLeft,
              child: RaisedButton(onPressed: (){
                FlutterBoost.singleton.open('login');
              },
              child: const Text('Open second route3'),
              ),
          )
        ],
      ),
    );
  }

  void getHttp() async {
    HttpRequest reque = HttpRequest.instance;
    Future.wait<dynamic>([reque.post("/jsp/v1/loading.jsp", null)]).then((res) {
      print("==========getHttp==========");
      LoginInfoModel info = LoginInfoModel.fromJson(res.first);
      print(info);
      // if(null != info){
        Future.delayed(Duration(seconds:5),(){
          FlutterBoost.singleton.open("front");
        });
       
      // }
    });
  }
}


class TestBoostNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    print('flutterboost#didPush');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    print('flutterboost#didPop');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic> previousRoute) {
    print('flutterboost#didRemove');
  }

  @override
  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {
    print('flutterboost#didReplace');
  }
}