// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import 'screens/screens.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Home());
    },
    CantiqueViewRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.CantiqueView());
    },
    DefterreGimmiRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DefterreGimmi());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/'),
        _i2.RouteConfig(CantiqueViewRoute.name, path: '/cantique-view/'),
        _i2.RouteConfig(DefterreGimmiRoute.name, path: '/defterre-gimmi')
      ];
}

/// generated route for
/// [_i1.Home]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.CantiqueView]
class CantiqueViewRoute extends _i2.PageRouteInfo<void> {
  const CantiqueViewRoute()
      : super(CantiqueViewRoute.name, path: '/cantique-view/');

  static const String name = 'CantiqueViewRoute';
}

/// generated route for
/// [_i1.DefterreGimmi]
class DefterreGimmiRoute extends _i2.PageRouteInfo<void> {
  const DefterreGimmiRoute()
      : super(DefterreGimmiRoute.name, path: '/defterre-gimmi');

  static const String name = 'DefterreGimmiRoute';
}
