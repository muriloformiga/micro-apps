import 'package:flutter/material.dart';
import 'package:micro_app_login/micro_app_login.dart';
import 'package:micro_core/app/i_base_app.dart';
import 'package:micro_core/app/i_micro_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget with IBaseApp {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    super.registerRouters();
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/login',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<IMicroApp> get microApps => [
        MicroAppLoginResolver(),
      ];
}
