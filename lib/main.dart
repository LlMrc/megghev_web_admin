import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megghe_web_admin/controller/menu_controller.dart';
import 'layout.dart';

void main() {
  Get.put(MenuController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutSite(title: 'Flutter Demo '),
    );
  }
}
