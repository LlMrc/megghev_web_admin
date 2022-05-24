import 'package:flutter/cupertino.dart';

import 'package:megghe_web_admin/routing/router.dart';
import 'package:megghe_web_admin/routing/routes.dart';

import '../constant/controller.dart';

Navigator navigator() =>  Navigator(
  key: navigationController.navigationKey,
  initialRoute: overviewPageRoute ,
  onGenerateRoute: generateRoute,
);
