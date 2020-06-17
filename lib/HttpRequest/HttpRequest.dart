import 'package:dio/dio.dart';

import '../ToolAndUserDefine/DeviceInfo.dart';

class HttpRequest {
  Dio dio;
  Map<String,dynamic> dInfo;

  //工厂模式
  factory HttpRequest() => _getInstance();

  static HttpRequest get instance => _getInstance();
  static HttpRequest _instance;

  ///测试环境
  static String baseUrl = 'http://globalapp.pearmedia.cn';
  ///生成环境
//  static String baseUrl = 'http://globalapp.pearvideo.com';

  HttpRequest._internal() {
    print("----->init");
    Future.wait([DeviceInfo.initPlatformaState()]).then((res){
      print("-------->DeviceInfo");
        dInfo = DeviceInfo.deviceData;
        dio = new Dio();

        BaseOptions options = BaseOptions();
        options.baseUrl = baseUrl;
        options.headers = dInfo;
        options.connectTimeout = 20000;

        dio.options = options;

    });
  }

  static HttpRequest _getInstance() {
    if (null == _instance) {
      _instance = HttpRequest._internal();
    }
    return _instance;
  }

  //通用的get
  get(url,params,{noTips=false}) async{
    Response response;
    try{
      response = await dio.get(url,queryParameters: params);
    }on DioError catch(e){
      print("error");
    }

    if(response.data is DioError){
      print("error+++++");
    }
    return response.data;
  }

  //通用post
  post(url,params,{noTips=false}) async{
    print("-----------------post");
    Response response;
    try{
      Map<String, dynamic> tempPara = Map<String, dynamic>();
      if(params == null){
        params = tempPara;
      }
      print("==========>>>>>>>>>");
      response = await dio.get(url,queryParameters: params);
      print("------->>>>>>>>>");
    }on DioError catch(e){
      print("error");
    }

    if(response.data is DioError){
      print("error+++++");
    }
    return response.data;
  }
}
