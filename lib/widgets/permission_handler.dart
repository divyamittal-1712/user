import 'dart:io';

// import 'package:universal_html/html.dart' as html;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../utils/app_colors.dart';
import '../utils/global_keys.dart';


class PermissionHandle {


  ///Permission for camera, microphone, storage
  static Future<void> permission() async {
    await cameraPermission();
    await microphonePermission();
    await storagePermission();
    await isLocationPermission();
  }
  ///Location Permission Dialog...
  static Future<void> isLocationPermission() async {
    final cameraStatus = await Permission.location.status;
    if (cameraStatus == PermissionStatus.denied) {
      await Permission.location.request();
    } else if (cameraStatus == PermissionStatus.permanentlyDenied) {
      await openAppSettings();
    }
  }
  ///Permission for camera...
  static Future<void> cameraPermission() async {
    final cameraStatus = await Permission.camera.status;
    if (cameraStatus == PermissionStatus.denied) {
      await Permission.camera.request();
    } else if (cameraStatus == PermissionStatus.permanentlyDenied) {
      await openAppSettings();
    }
  }

  ///Permission for microphone...
  static Future<void> microphonePermission() async {
    final microphoneStatus = await Permission.microphone.status;
    if (microphoneStatus == PermissionStatus.denied) {
      await Permission.microphone.request();
    } else if (microphoneStatus == PermissionStatus.permanentlyDenied) {
      await openAppSettings();
    }
  }


  ///Permission for storage...
  static Future<void> storagePermission() async {
    final storageStatus = await Permission.storage.status;
    if (storageStatus == PermissionStatus.denied) {
      await Permission.storage.request();
    } else if (storageStatus == PermissionStatus.permanentlyDenied) {
      await openAppSettings();
    }
  }

  ///Todo:  Dialog Box
  ///Notification Permission Dialog...
  static Future<bool> isNotificationGrantedDialog() async {
    if (await Permission.notification.request().isGranted) {
      return true;
    } else {
      permissionDialog(
          title: "Notification Permission",
          des:
          "This app needs notification access to show notifications.\nGo to settings -> Turn on notification permission");
      return false;
    }
  }



  ///Camera Permission Dialog...
  static Future<bool> cameraPermissionDialog() async {
    if (await Permission.camera.request().isGranted) {
      return true;
    } else if (await Permission.camera.isPermanentlyDenied ||
        await Permission.camera.isRestricted) {
      permissionDialog(
          title: "Camera Permission",
          des:
          "This app needs camera access to click and upload images of cars defect points.\nGo to settings -> App permissions -> Turn on camera permission");
      return false;
    } else {
      return true;
    }
  }

  /*static Future<bool> webCameraPermission() async {
    final perm =
        await html.window.navigator.permissions!.query({"name": "camera"});
    final stream = await html.window.navigator.getUserMedia(video: true);
    if (perm.state == "denied") {
      permissionDialog(
          title: "Camera Permission",
          des:
              "This app needs camera access to click and upload images of cars defect points.\nGo to settings -> App permissions -> Turn on camera permission");

      return false;
    } else {
      return true;
    }
  }*/

  static Future<bool> locationPermissionDialog() async {
    permissionDialog(
        title: "Location Permission",
        des:
        "This app needs location access to get your location.\nGo to settings -> App permissions -> Turn on location permission");
    return false;
  }

  static Future<bool> locationPermissionDialog2() async {
    if (await Permission.location.request().isGranted) {
      return true;
    } else {
      permissionDialog(
          title: "Location Permission",
          des:
          "This app needs location access to get your location.\nGo to settings -> App permissions -> Turn on location permission");
      return false;
    }
  }

  static Future<bool> storagePermissionDialog() async {
    if (await Permission.storage.request().isGranted) {
      return true;
    } else {
      permissionDialog(
          title: "Gallery Permission",
          des:
          "This app needs storage access to pick and upload images of cars defect points.\nGo to settings -> App permissions -> Turn on storage permission");
      return false;
    }
  }

  static Future<bool> platformPermissionDialog() async {
    if (Platform.isIOS) {
      if (await isNotificationGrantedDialog() &&
          await cameraPermissionDialog() &&
          await storagePermissionDialog()) {
        return true;
      } else {
        return false;
      }
    } else {
      if (await cameraPermissionDialog() && await storagePermissionDialog()) {
        return true;
      } else {
        return false;
      }
    }
  }

  static permissionDialog({String? title, String? des}) {
    showDialog(
        context: GlobalVariable.navState.currentContext!,
        // context: Get.context!,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: Text('$title'),
          content: Text('$des'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('Cancel'),
              textStyle: TextStyle(color: AppColor.appBlack),
              // textStyle: CustomStyle.montserrat(color: AppColor.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            CupertinoDialogAction(
              child: const Text('Settings'),
              textStyle: TextStyle(color: AppColor.appBlack),
              onPressed: () => openAppSettings(),
            ),
          ],
        ));
  }
}
