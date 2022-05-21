import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megghe_web_admin/constant/controller.dart';
import 'package:megghe_web_admin/constant/style.dart';
import 'package:megghe_web_admin/helpers/responsive_widget.dart';
import 'package:megghe_web_admin/routing/routes.dart';
import 'package:megghe_web_admin/widgets/custom_text.dart';

import 'side_menue_items.dart';

class MenuSide extends StatelessWidget {
  const MenuSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
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
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset('images/logo.png', width: 40, height: 40,),
                    ),
                    Flexible(
                        child: CustomText(
                      text: 'Dash',
                      size: 20,
                      color: active,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(
                      width: _width / 48,
                    ),
                 
                  ],
                ),
         
        ],
      ),
        const SizedBox(
                  height: 40,
                ),
                Divider(
                  color: ligthGrey.withOpacity(.1),
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    children: sideMenuItems
                        .map((itemName) => SideMenuItems(
                            itemName: itemName == authenticationPageRoute
                                ? "Logout"
                                : itemName,
                            onTap: () {
                              if (itemName == authenticationPageRoute) {
                                //  TODO:: go to Authentication page
                              }
                              if (!menuController.isActive(itemName)) {
                                menuController.buildIcon(itemName);
                                if (ResponsivWidget.isSmallScreen(context)) {
                                  Get.back();
                        
                                   //  TODO:: go to item name route 
                                }
                              }
                            }))
                        .toList()),
                        
              ]),
      color: light,
    );
  }
}
