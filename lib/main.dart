import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'module/tab/page/tab_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabPage(),
    );
  }
}
