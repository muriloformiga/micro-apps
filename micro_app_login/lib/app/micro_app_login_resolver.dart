import 'package:micro_app_login/page/login_page.dart';
import 'package:micro_core/app/i_micro_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';

class MicroAppLoginResolver implements IMicroApp {
  @override
  String get name => 'micro_app_login';

  @override
  Map<String, WidgetBuilderArgs> get routes {
    return {
      '/login': (_, __) => const LoginPage(),
    };
  }
}
