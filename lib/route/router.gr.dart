// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../presentation/mian_page.dart' as _i3;
import '../presentation/routes/black_spur/excursion_list.dart' as _i4;
import '../presentation/routes/black_spur/village_excursion.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SpurVillageExcursionRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SpurVillageExcursion(),
      );
    },
    EmptyRouterPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MapPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MapPage(),
      );
    },
    SpurExcursionListRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SpurExcursionListRouterArgs>(
          orElse: () => SpurExcursionListRouterArgs(
              excListId: pathParams.getInt('excListId')));
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.SpurExcursionList(
          key: args.key,
          excListId: args.excListId,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/mapEmptyPage',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          SpurVillageExcursionRoute.name,
          path: '/SpurVillageExcursion',
        ),
        _i5.RouteConfig(
          EmptyRouterPageRoute.name,
          path: '/mapEmptyPage',
          children: [
            _i5.RouteConfig(
              MapPageRoute.name,
              path: '',
              parent: EmptyRouterPageRoute.name,
            ),
            _i5.RouteConfig(
              SpurExcursionListRouter.name,
              path: ':excListId',
              parent: EmptyRouterPageRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SpurVillageExcursion]
class SpurVillageExcursionRoute extends _i5.PageRouteInfo<void> {
  const SpurVillageExcursionRoute()
      : super(
          SpurVillageExcursionRoute.name,
          path: '/SpurVillageExcursion',
        );

  static const String name = 'SpurVillageExcursionRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class EmptyRouterPageRoute extends _i5.PageRouteInfo<void> {
  const EmptyRouterPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          EmptyRouterPageRoute.name,
          path: '/mapEmptyPage',
          initialChildren: children,
        );

  static const String name = 'EmptyRouterPageRoute';
}

/// generated route for
/// [_i3.MapPage]
class MapPageRoute extends _i5.PageRouteInfo<void> {
  const MapPageRoute()
      : super(
          MapPageRoute.name,
          path: '',
        );

  static const String name = 'MapPageRoute';
}

/// generated route for
/// [_i4.SpurExcursionList]
class SpurExcursionListRouter
    extends _i5.PageRouteInfo<SpurExcursionListRouterArgs> {
  SpurExcursionListRouter({
    _i6.Key? key,
    required int excListId,
  }) : super(
          SpurExcursionListRouter.name,
          path: ':excListId',
          args: SpurExcursionListRouterArgs(
            key: key,
            excListId: excListId,
          ),
          rawPathParams: {'excListId': excListId},
        );

  static const String name = 'SpurExcursionListRouter';
}

class SpurExcursionListRouterArgs {
  const SpurExcursionListRouterArgs({
    this.key,
    required this.excListId,
  });

  final _i6.Key? key;

  final int excListId;

  @override
  String toString() {
    return 'SpurExcursionListRouterArgs{key: $key, excListId: $excListId}';
  }
}
