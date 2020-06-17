import 'package:flutter/material.dart';
import 'Controller/Welcome/WelcomeController.dart';

import 'package:flutter_boost/flutter_boost.dart';
import 'HttpRequest/HttpRequest.dart';
import 'HttpModel/Model/LoginInfoModel.dart';
import 'Controller/FrontPage/FrontPage.dart';
import 'Controller/Login/LoginController.dart';
import 'Controller/Setting/SettingController.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   @override
  void initState() {
    super.initState();
   FlutterBoost.singleton.registerPageBuilders({
     'welcome': (pageName, params, _) => WelcomeController(),
     'front': (pageName, params, _) => FrontPageController(),
     'login': (pageName, params, _) => LoginController(),

     //可以在native层通过 getContainerParams来传递参数
     'setting': (pageName, params, _) {
       print("--->flutterPage params:$params");
       return SettingController();
     },
   });

   FlutterBoost.singleton.addBoostNavigatorObserver(TestBoostNavigatorObserver());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: FlutterBoost.init(postPush:_onRoutePushed),
      home:Container(color:Colors.white),
    );
  }
  void _onRoutePushed(
    String pageName,
    String uniqueId,
    Map<String, dynamic> params,
    Route<dynamic> route,
    Future<dynamic> _,
  ) {}
}