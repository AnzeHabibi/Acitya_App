import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goblok_app/ui/pages/page.dart';

import 'ui/pages/page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SignInPage(),
    );
  }
}