import 'package:micro_core/app/micro_core_utils.dart';

abstract class IMicroApp {
  String get name;

  Map<String, WidgetBuilderArgs> get routes;
}
