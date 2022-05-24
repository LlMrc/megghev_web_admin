import 'package:flutter/cupertino.dart';

const rootRoute = "/";

const overviewPageDisplayName = "Overview";
const overviewPageRoute = "/overview";

const articlePageDisplayName = "Article";
const articlePageRoute = "/article";

const clientsPageDisplayName = "Clients";
const clientsPageRoute = "/clients";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

const settingsPageDisplayName = "Settings";
const settingsPageRoute = "/settings";

const aboutPageRouteDisplayName = "Log out";
const aboutPageRoute = "/about";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(overviewPageDisplayName, overviewPageRoute),
  MenuItem(clientsPageDisplayName, clientsPageRoute),
  MenuItem(settingsPageDisplayName, settingsPageRoute),
  MenuItem(articlePageDisplayName, articlePageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
