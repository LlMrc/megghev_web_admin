import 'package:flutter/material.dart';


const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int custumScreenSize = 1100;

class ResponsivWidget extends StatelessWidget {
  const ResponsivWidget(
      {Key? key,
      required this.largeScreen,
      this.mediumScreen,

      this.smallScreen})
      : super(key: key);
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= smallScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width <= custumScreenSize;

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
          builder: ((context, constraints) {
            double _width = constraints.maxWidth;
            if (_width >= largeScreenSize) {
              return largeScreen;
            } else if (_width < largeScreenSize && _width >= mediumScreenSize) {
              return mediumScreen ?? largeScreen;
            } else {
              return smallScreen ?? largeScreen;
            }
            //  double _heigth = constraints.maxWidth;
          }),
        );
  }
}


  // ThemeData(
  //           textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
  //               .apply(bodyColor: Colors.black),
  //           pageTransitionsTheme: const PageTransitionsTheme(builders: {
  //             TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
  //             TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder()
  //           }),
  //           primaryColor: Colors.blue,
  //           scaffoldBackgroundColor: Colors.white),
  //       home: