import 'package:cantiques_adventistes/router.dart';
import 'package:cantiques_adventistes/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CantiquesAdventistes extends StatelessWidget {
  const CantiquesAdventistes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = $AppRouter();
    return MaterialApp.router(
      title: 'Cantiques Adventistes',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'cantiques_adventistes',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.xanhMonoTextTheme(),
      ),
    );
  }
}
