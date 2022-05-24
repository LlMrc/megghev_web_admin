import 'package:flutter/material.dart';
import 'package:megghe_web_admin/pages/about/about.dart';

import 'package:megghe_web_admin/pages/article/article.dart';
import 'package:megghe_web_admin/pages/client/client.dart';
import 'package:megghe_web_admin/pages/overview/overview.dart';
import 'package:megghe_web_admin/pages/settings/settings.dart';
import 'package:megghe_web_admin/routing/routes.dart';

import '../pages/authentication/authentication.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverView());
    case articlePageRoute:
      return _getPageRoute(Article());
    case clientsPageRoute:
      return _getPageRoute(Clients());
       case aboutPageRoute:
      return _getPageRoute(About());
        case  settingsPageRoute:
      return _getPageRoute(Settings());
        case authenticationPageRoute:
      return _getPageRoute(Authentication());
    default:
      return _getPageRoute(OverView());

  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}