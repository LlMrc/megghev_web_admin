import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:megghe_web_admin/constant/controller.dart';
import 'package:megghe_web_admin/constant/style.dart';
import 'package:megghe_web_admin/widgets/custom_text.dart';

class HorizontalMenuItems extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const HorizontalMenuItems({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("Not hoverring");
      },
      child: Obx(() => Container(
        color: menuController.isHovering(itemName)
        ? ligthGrey.withOpacity(0.1)
        :Colors.transparent,
        child: Row(children: [
          Visibility( visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
            child: Container(width: 6, height: 40, color: darck, ),
            maintainSize: true,
            maintainState: true,
            maintainAnimation: true,

          ),
           SizedBox(width: _width/80,),
           Padding(padding: const EdgeInsets.all(16),
           child: menuController.buildIcon(itemName),),
           if(!menuController.isActive(itemName))
           Flexible(child: CustomText(text: itemName,
           color: menuController.isHovering(itemName)? 
           darck: ligthGrey,)) else
             Flexible(child: CustomText(text: itemName,
             size: 18,
             fontWeight: FontWeight.bold,
              color: darck,),)
           
        ],)
      )),
    );
  }
}
