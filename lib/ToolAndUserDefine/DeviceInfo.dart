import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';
import 'package:package_info/package_info.dart';

class DeviceInfo {
  static DeviceInfo _instance = DeviceInfo._internal();
  static Map<String, dynamic> deviceData;

  factory DeviceInfo() => _instance;
  Map<String, dynamic> headers;

  DeviceInfo._internal() {
   headers = deviceData;
  }

  static DeviceInfo getInstance() {
    if (null == _instance) {
      _instance = DeviceInfo._internal();
    }
    return _instance;
  }

  static final DeviceInfoPlugin infoPlugin = DeviceInfoPlugin();

  static Future<Map<String, dynamic>> initPlatformaState() async {
    print("------>initPlatformaState");
    try {
      if (Platform.isAndroid) {
        //安卓设备信息
      } else if (Platform.isIOS) {
        deviceData = readIosDeviceInfo(
            await infoPlugin.iosInfo, await PackageInfo.fromPlatform());
      }
    } on PlatformException {
      deviceData = <String, dynamic>{
        'Error:': 'Failed to get platform version.'
      };
    }
  }

  static Map<String, dynamic> readAndoirdBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{};
  }

  static Map<String, dynamic> readIosDeviceInfo(
      IosDeviceInfo device, PackageInfo pacInfo) {
        print("---------readIosDeviceInfo");
    return <String, dynamic>{
      "X-Platform-Type": 1,
      "X-Platform-Version": device.systemVersion,
      "X-Device-Model": device.name,
      "X-Device-Brand": device.utsname.machine,
      "X-Client-ID": device.identifierForVendor,

      "X-App-ID": pacInfo.buildNumber,
      "X-App-Key": pacInfo.packageName,
      "X-App-Version": pacInfo.version,

      // "name": data.name,
      // "systemName": data.systemName,
      // "systemVersion": data.systemVersion,
      // "model": data.model,
      // "localizedModel": data.localizedModel,
      // "identifierForVendor": data.identifierForVendor,
      // "isPhysicalDevice": data.isPhysicalDevice,
      // "utsname.sysname": data.utsname.sysname,
      // "utsname.nodename": data.utsname.nodename,
      // "utsname.release": data.utsname.release,
      // "utsname.version": data.utsname.version,
      // "utsname.machine": data.utsname.machine,
    };
  }
}
