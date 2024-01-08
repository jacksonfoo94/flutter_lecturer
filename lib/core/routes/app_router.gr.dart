// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_second_page.dart'
    as _i2;
import 'package:trinity_lecture_app/presentation/pages/main_page.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DummyUIRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DummyUIPage(),
      );
    },
    DummyUiSecondRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DummyUiSecondPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DummyUIPage]
class DummyUIRoute extends _i4.PageRouteInfo<void> {
  const DummyUIRoute({List<_i4.PageRouteInfo>? children})
      : super(
          DummyUIRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUIRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DummyUiSecondPage]
class DummyUiSecondRoute extends _i4.PageRouteInfo<void> {
  const DummyUiSecondRoute({List<_i4.PageRouteInfo>? children})
      : super(
          DummyUiSecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUiSecondRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
