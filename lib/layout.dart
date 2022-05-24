import 'package:flutter/material.dart';
import 'package:megghe_web_admin/helpers/responsive_widget.dart';
import 'package:megghe_web_admin/widgets/large_screen.dart';
import 'package:megghe_web_admin/widgets/menu_side.dart';
import 'package:megghe_web_admin/widgets/small_screen.dart';
import 'package:megghe_web_admin/widgets/top_nav_bar.dart';

class LayoutSite extends StatelessWidget {
  const LayoutSite({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      drawer:  const Drawer(
        child: SideMenu(),
      ),
        appBar: topNavBarr(context, scaffoldKey, title),
        body: const ResponsivWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        
        ));
  }
}
