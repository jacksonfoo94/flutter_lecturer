// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:trinity_lecture_app/presentation/pages/counter_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_page.dart'
    as _i2;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_second_page.dart'
    as _i3;
import 'package:trinity_lecture_app/presentation/pages/main_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CounterRoute.name: (routeData) {
      final args = routeData.argsAs<CounterRouteArgs>(
          orElse: () => const CounterRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CounterPage(key: args.key),
      );
    },
    DummyUIRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DummyUIPage(),
      );
    },
    DummyUiSecondRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DummyUiSecondPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CounterPage]
class CounterRoute extends _i5.PageRouteInfo<CounterRouteArgs> {
  CounterRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          CounterRoute.name,
          args: CounterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const _i5.PageInfo<CounterRouteArgs> page =
      _i5.PageInfo<CounterRouteArgs>(name);
}

class CounterRouteArgs {
  const CounterRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'CounterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.DummyUIPage]
class DummyUIRoute extends _i5.PageRouteInfo<void> {
  const DummyUIRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DummyUIRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUIRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DummyUiSecondPage]
class DummyUiSecondRoute extends _i5.PageRouteInfo<void> {
  const DummyUiSecondRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DummyUiSecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUiSecondRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
