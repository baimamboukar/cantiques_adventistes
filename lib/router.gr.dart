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
    DefterreGimmiRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DefterreGimmi());
    },
    CantiqueViewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CantiqueViewRouteArgs>(
          orElse: () =>
              CantiqueViewRouteArgs(number: pathParams.getInt('number')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.CantiqueView(key: args.key, number: args.number));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/'),
        _i2.RouteConfig(DefterreGimmiRoute.name,
            path: '/defterre-gimmi',
            children: [
              _i2.RouteConfig(CantiqueViewRoute.name,
                  path: ':number', parent: DefterreGimmiRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.Home]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.DefterreGimmi]
class DefterreGimmiRoute extends _i2.PageRouteInfo<void> {
  const DefterreGimmiRoute({List<_i2.PageRouteInfo>? children})
      : super(DefterreGimmiRoute.name,
            path: '/defterre-gimmi', initialChildren: children);

  static const String name = 'DefterreGimmiRoute';
}

/// generated route for
/// [_i1.CantiqueView]
class CantiqueViewRoute extends _i2.PageRouteInfo<CantiqueViewRouteArgs> {
  CantiqueViewRoute({_i3.Key? key, required int number})
      : super(CantiqueViewRoute.name,
            path: ':number',
            args: CantiqueViewRouteArgs(key: key, number: number),
            rawPathParams: {'number': number});

  static const String name = 'CantiqueViewRoute';
}

class CantiqueViewRouteArgs {
  const CantiqueViewRouteArgs({this.key, required this.number});

  final _i3.Key? key;

  final int number;

  @override
  String toString() {
    return 'CantiqueViewRouteArgs{key: $key, number: $number}';
  }
}
