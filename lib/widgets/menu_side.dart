import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megghe_web_admin/constant/style.dart';
import 'package:megghe_web_admin/helpers/responsive_widget.dart';
import 'package:megghe_web_admin/routing/routes.dart';
import 'package:megghe_web_admin/widgets/side_menue_items.dart';

import '../constant/controller.dart';
import 'custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsivWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset(
                        "images/logo.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        fontWeight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          Divider(
            color: ligthGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItemRoutes
                .map((item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () {
                    
                      if (item.route == authenticationPageRoute) {
                        Get.offAllNamed(authenticationPageRoute);
                        menuController
                            .changeActiveItemTo(overviewPageDisplayName);
                      }
                      if (!menuController.isActive(item.name)) {
                        menuController.changeActiveItemTo(item.name);
                        if (ResponsivWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigatorTo(item.route);
                      }
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}
