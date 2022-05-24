import 'package:flutter/material.dart';
import 'package:megghe_web_admin/helpers/responsive_widget.dart';
import 'package:megghe_web_admin/widgets/horizontal_menu.dart';
import 'package:megghe_web_admin/widgets/vertical_menu.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  const SideMenuItem({ Key? key, required this.itemName, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ResponsivWidget.isCustomScreen(context)){
      return VerticalMenuItems(itemName: itemName, onTap: onTap);
    }else{
      return HorizontalMenuItem(itemName: itemName, onTap:onTap);
    }
  }
}