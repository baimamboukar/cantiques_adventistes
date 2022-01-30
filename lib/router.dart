import 'package:auto_route/auto_route.dart';
import 'package:cantiques_adventistes/screens/screens.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'cantiques adventistes',
  routes: <AutoRoute>[
    AutoRoute(page: Home, initial: true, path: '/'),
    AutoRoute(page: CantiqueView, path: "/cantique-view/:number"),
    AutoRoute(page: DefterreGimmi, path: "/defterre-gimmi", children: []),
  ],
)
class $AppRouter {}
