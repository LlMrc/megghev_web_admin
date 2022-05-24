// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:megghe_web_admin/constant/style.dart';
// import 'package:megghe_web_admin/routing/routes.dart';

// class MenuController extends GetxController {
//    static MenuController instance = Get.find();
//   var activeItem = overviewPageDisplayName.obs;

//   var hoverItem = "".obs;

//   changeActiveItemTo(String itemName) {
//     activeItem.value = itemName;
//   }

//   onHover(String item) {
//     if (!isActive(item)) hoverItem.value = item;
//     {}
//   }

//     isHovering(String itemName) => hoverItem.value == itemName;
//    isActive(String itemName) => activeItem.value == itemName;

//   Widget buildIcon(String item) {
//     switch (item) {
//       case overviewPageRoute:
//         return _buildCustomIcon(item, Icons.trending_up_rounded);
//       case articlePageRoute:
//         return _buildCustomIcon(item, Icons.text_fields);
//       case clientsPageRoute:
//         return _buildCustomIcon(item, Icons.group);
//           case aboutPageRoute:
//         return _buildCustomIcon(item, Icons.info_outline);
//       case authenticationPageRoute:
//         return _buildCustomIcon(item, Icons.power_settings_new_sharp);
//       default:
//         return _buildCustomIcon(item, Icons.exit_to_app);
//     }
//   }

//   Widget _buildCustomIcon(String item, IconData icon) {
//     if (isActive(item)) {
//       return Icon(
//         icon,
//         size: 22,
//         color: darck,
//       );
//     }
//     return Icon(
//       icon,
//       color: isHovering(item) ? darck : ligthGrey,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megghe_web_admin/routing/routes.dart';

import '../constant/style.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overviewPageDisplayName.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overviewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case articlePageDisplayName:
        return _customIcon(Icons.content_paste_search_outlined, itemName);
      case clientsPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageDisplayName:
       return _customIcon(Icons.power_settings_new, itemName);
      case settingsPageDisplayName:
        return _customIcon(Icons.settings, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: darck);

    return Icon(
      icon,
      color: isHovering(itemName) ? darck : ligthGrey,
    );
  }
}