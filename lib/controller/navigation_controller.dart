import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  static NavigationController instence = Get.find();
  final GlobalKey<NavigatorState> navigationKey = GlobalKey();
  Future<dynamic> navigatorTo(String route) {
    return navigationKey.currentState!.popAndPushNamed(route);
  }
  goBack()=> navigationKey.currentState!.pop();
  
}
