import 'package:micro_core/app/i_micro_app.dart';
import 'package:flutter/material.dart';

import 'micro_core_utils.dart';

abstract class IBaseApp {
  List<IMicroApp> get microApps;

  Map<String, WidgetBuilderArgs> get baseRoutes;

  final Map<String, WidgetBuilderArgs> routes = {};

  void registerRouters() {
    if (baseRoutes.isNotEmpty) routes.addAll(baseRoutes);
    if (microApps.isNotEmpty) {
      for (IMicroApp microApp in microApps) {
        routes.addAll(microApp.routes);
      }
    }
  }

  Route<dynamic>? generateRoute(RouteSettings settings) {
    var routerName = settings.name;
    var routerArgs = settings.arguments;

    var navigateTo = routes[routerName];
    if (navigateTo == null) return null;

    return MaterialPageRoute(
      builder: (context) => navigateTo(context, routerArgs),
    );
  }
}
