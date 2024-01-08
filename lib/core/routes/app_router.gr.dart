// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:trinity_lecture_app/presentation/pages/counter_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_page.dart'
    as _i2;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_second_page.dart'
    as _i3;
import 'package:trinity_lecture_app/presentation/pages/input_validation_page.dart'
    as _i4;
import 'package:trinity_lecture_app/presentation/pages/main_page.dart' as _i5;
import 'package:trinity_lecture_app/presentation/pages/simple_calculator_page.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    CounterRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CounterPage(),
      );
    },
    DummyUIRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DummyUIPage(),
      );
    },
    DummyUiSecondRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DummyUiSecondPage(),
      );
    },
    InputValidationRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.InputValidationPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainPage(),
      );
    },
    SimpleCalculatorRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SimpleCalculatorPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CounterPage]
class CounterRoute extends _i7.PageRouteInfo<void> {
  const CounterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DummyUIPage]
class DummyUIRoute extends _i7.PageRouteInfo<void> {
  const DummyUIRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DummyUIRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUIRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DummyUiSecondPage]
class DummyUiSecondRoute extends _i7.PageRouteInfo<void> {
  const DummyUiSecondRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DummyUiSecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUiSecondRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.InputValidationPage]
class InputValidationRoute extends _i7.PageRouteInfo<void> {
  const InputValidationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          InputValidationRoute.name,
          initialChildren: children,
        );

  static const String name = 'InputValidationRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainPage]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SimpleCalculatorPage]
class SimpleCalculatorRoute extends _i7.PageRouteInfo<void> {
  const SimpleCalculatorRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SimpleCalculatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'SimpleCalculatorRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
