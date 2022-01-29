import 'package:auto_route/auto_route.dart';
import 'package:cantiques_adventistes/screens/screens.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'cantiques adventistes',
  routes: <AutoRoute>[
    AutoRoute(page: Home, initial: true),
    AutoRoute(page: DefterreGimmi, path: '/defterre-gimmi'),
    AutoRoute(page: Home),
  ],
)
class $AppRouter {}
