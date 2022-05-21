import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/controller.dart';
import '../constant/style.dart';
import 'custom_text.dart';

class VerticalMenuItems extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const VerticalMenuItems(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
         onTap: () => onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("Not hoverring");
      },
      child: Obx(() => Container(color: menuController.isHovering(itemName)
        ? ligthGrey.withOpacity(0.1)
        :Colors.transparent,
         child: Row(children: [
            Visibility( visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
            child: Container(width: 3, height: 72, color: darck, ),
            maintainSize: true,
            maintainState: true,
            maintainAnimation: true,

          ),
          Expanded(child: Column(
             mainAxisSize: MainAxisSize.min,
            children: [
                   Padding(padding: const EdgeInsets.all(16),
                   child: menuController.buildIcon(itemName)),
                    if(!menuController.isActive(itemName))
                    
           Flexible(child: CustomText(text: itemName,
           color: menuController.isHovering(itemName)? 
           darck: ligthGrey,)) else
             Flexible(child: CustomText(text: itemName,
             size: 18,
             fontWeight: FontWeight.bold,
              color: darck,),)
            ],
          ))
         ],) ,)), 
    );
  }
}
