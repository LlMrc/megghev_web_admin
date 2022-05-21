import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megghe_web_admin/constant/style.dart';
import 'package:megghe_web_admin/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController intance = Get.find();
  var activeItems = overViewPageRoute.obs;
  var hoverItems = "".obs;

  changeActiveItemTo(String itemName) {
    activeItems.value = itemName;
  }

  onHover(String item) {
    if (!isActive(item)) hoverItems.value = item;
    {}
  }

  bool isActive(String item) => activeItems.value == item;
  bool isHovering(String item) => hoverItems.value == item;

  Widget buildIcon(String item) {
    switch (item) {
      case overViewPageRoute:
        return _buildCustomIcon(item, Icons.trending_up_rounded);
      case settingPageRoute:
        return _buildCustomIcon(item, Icons.settings);
      case clientPageRoute:
        return _buildCustomIcon(item, Icons.info);
      case authenticationPageRoute:
        return _buildCustomIcon(item, Icons.login_rounded);
      default:
        return _buildCustomIcon(item, Icons.exit_to_app);
    }
  }

  Widget _buildCustomIcon(String item, IconData icon) {
    if (isActive(item)) {
      return Icon(
        icon,
        size: 22,
        color: darck,
      );
    }
    return Icon(
      icon,
      color: isHovering(item) ? darck : ligthGrey,
    );
  }
}
