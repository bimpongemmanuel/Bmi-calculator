import 'package:bmi_app/bmi_screen.dart';
import 'package:bmi_app/list.dart';
// import 'package:bmi_app/card2.dart';
// import 'package:bmi_app/card_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
main(){
  runApp(
     DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) =>
    MaterialApp(
        useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: MyListApp(),
    ),
     )
  );
}