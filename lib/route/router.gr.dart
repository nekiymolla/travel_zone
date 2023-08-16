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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:auto_route/empty_router_widgets.dart' as _i8;
import 'package:flutter/material.dart' as _i15;
import 'package:video_player/video_player.dart' as _i16;

import '../presentation/mian_page.dart' as _i9;
import '../presentation/routes/black_spur/excursion_list.dart' as _i10;
import '../presentation/routes/black_spur/station_black_spur.dart' as _i3;
import '../presentation/routes/black_spur/village_excursion.dart' as _i2;
import '../presentation/routes/oren_reserve/oren_reserve.dart' as _i13;
import '../presentation/routes/saraktash/excursion_list.dart' as _i11;
import '../presentation/routes/saraktash/saraktach_church.dart' as _i5;
import '../presentation/routes/saraktash/saraktash_excursion.dart' as _i4;
import '../presentation/routes/studentsi/excursion_list.dart' as _i12;
import '../presentation/routes/studentsi/studentsi_church.dart' as _i6;
import '../presentation/routes/studentsi/studentsi_excursion.dart' as _i7;
import '../presentation/video_page.dart' as _i1;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    VideoPlayerViewRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPlayerViewRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.VideoPlayerView(
          key: args.key,
          url: args.url,
          dataSourceType: args.dataSourceType,
        ),
      );
    },
    SpurVillageExcursionRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SpurVillageExcursion(),
      );
    },
    StationSpurExcursionRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.StationBlackSpurExcursion(),
      );
    },
    SaraktashExcursionRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SaraktashExcursion(),
      );
    },
    ChurchSaraktashExcursionRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ChurchSaraktashExcursion(),
      );
    },
    ChurchStudentsiExcursionRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ChurchStudentsi(),
      );
    },
    StudentsiExcursionRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.StudentsiExcursion(),
      );
    },
    EmptyRouterPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.EmptyRouterPage(),
      );
    },
    MapPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.MapPage(),
      );
    },
    SpurExcursionListRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SpurExcursionListRouterArgs>(
          orElse: () => SpurExcursionListRouterArgs(
              excListId: pathParams.getInt('excListId')));
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.SpurExcursionList(
          key: args.key,
          excListId: args.excListId,
        ),
      );
    },
    SaraktashExcursionListRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SaraktashExcursionListRouterArgs>(
          orElse: () => SaraktashExcursionListRouterArgs(
              sarExcListId: pathParams.getInt('sarExcListId')));
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.SaraktashExcursionList(
          key: args.key,
          sarExcListId: args.sarExcListId,
        ),
      );
    },
    StudentsiExcursionListRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<StudentsiExcursionListRouterArgs>(
          orElse: () => StudentsiExcursionListRouterArgs(
              studExcListId: pathParams.getInt('studExcListId')));
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.StudentsiExcursionList(
          key: args.key,
          studExcListId: args.studExcListId,
        ),
      );
    },
    ReserveOrenExcursionRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ReserveOrenExcursionRouterArgs>(
          orElse: () => ReserveOrenExcursionRouterArgs(
              reserveId: pathParams.getInt('reserveId')));
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.ReserveOrenExcursion(
          key: args.key,
          reserveId: args.reserveId,
        ),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          VideoPlayerViewRoute.name,
          path: '/',
        ),
        _i14.RouteConfig(
          SpurVillageExcursionRoute.name,
          path: '/SpurVillageExcursion',
        ),
        _i14.RouteConfig(
          StationSpurExcursionRoute.name,
          path: '/StationBlackSpurExcursion',
        ),
        _i14.RouteConfig(
          SaraktashExcursionRoute.name,
          path: '/SaraktashExcursion',
        ),
        _i14.RouteConfig(
          ChurchSaraktashExcursionRoute.name,
          path: '/ChurchSaraktashExcursion',
        ),
        _i14.RouteConfig(
          ChurchStudentsiExcursionRoute.name,
          path: '/ChurchStudentsiExcursion',
        ),
        _i14.RouteConfig(
          StudentsiExcursionRoute.name,
          path: '/StudentsiExcursion',
        ),
        _i14.RouteConfig(
          EmptyRouterPageRoute.name,
          path: '/mapEmptyPage',
          children: [
            _i14.RouteConfig(
              MapPageRoute.name,
              path: '',
              parent: EmptyRouterPageRoute.name,
            ),
            _i14.RouteConfig(
              SpurExcursionListRouter.name,
              path: ':excListId',
              parent: EmptyRouterPageRoute.name,
            ),
            _i14.RouteConfig(
              SaraktashExcursionListRouter.name,
              path: ':sarExcListId',
              parent: EmptyRouterPageRoute.name,
            ),
            _i14.RouteConfig(
              StudentsiExcursionListRouter.name,
              path: ':studExcListId',
              parent: EmptyRouterPageRoute.name,
            ),
            _i14.RouteConfig(
              ReserveOrenExcursionRouter.name,
              path: ':reserveId',
              parent: EmptyRouterPageRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.VideoPlayerView]
class VideoPlayerViewRoute
    extends _i14.PageRouteInfo<VideoPlayerViewRouteArgs> {
  VideoPlayerViewRoute({
    _i15.Key? key,
    required String url,
    required _i16.DataSourceType dataSourceType,
  }) : super(
          VideoPlayerViewRoute.name,
          path: '/',
          args: VideoPlayerViewRouteArgs(
            key: key,
            url: url,
            dataSourceType: dataSourceType,
          ),
        );

  static const String name = 'VideoPlayerViewRoute';
}

class VideoPlayerViewRouteArgs {
  const VideoPlayerViewRouteArgs({
    this.key,
    required this.url,
    required this.dataSourceType,
  });

  final _i15.Key? key;

  final String url;

  final _i16.DataSourceType dataSourceType;

  @override
  String toString() {
    return 'VideoPlayerViewRouteArgs{key: $key, url: $url, dataSourceType: $dataSourceType}';
  }
}

/// generated route for
/// [_i2.SpurVillageExcursion]
class SpurVillageExcursionRoute extends _i14.PageRouteInfo<void> {
  const SpurVillageExcursionRoute()
      : super(
          SpurVillageExcursionRoute.name,
          path: '/SpurVillageExcursion',
        );

  static const String name = 'SpurVillageExcursionRoute';
}

/// generated route for
/// [_i3.StationBlackSpurExcursion]
class StationSpurExcursionRoute extends _i14.PageRouteInfo<void> {
  const StationSpurExcursionRoute()
      : super(
          StationSpurExcursionRoute.name,
          path: '/StationBlackSpurExcursion',
        );

  static const String name = 'StationSpurExcursionRoute';
}

/// generated route for
/// [_i4.SaraktashExcursion]
class SaraktashExcursionRoute extends _i14.PageRouteInfo<void> {
  const SaraktashExcursionRoute()
      : super(
          SaraktashExcursionRoute.name,
          path: '/SaraktashExcursion',
        );

  static const String name = 'SaraktashExcursionRoute';
}

/// generated route for
/// [_i5.ChurchSaraktashExcursion]
class ChurchSaraktashExcursionRoute extends _i14.PageRouteInfo<void> {
  const ChurchSaraktashExcursionRoute()
      : super(
          ChurchSaraktashExcursionRoute.name,
          path: '/ChurchSaraktashExcursion',
        );

  static const String name = 'ChurchSaraktashExcursionRoute';
}

/// generated route for
/// [_i6.ChurchStudentsi]
class ChurchStudentsiExcursionRoute extends _i14.PageRouteInfo<void> {
  const ChurchStudentsiExcursionRoute()
      : super(
          ChurchStudentsiExcursionRoute.name,
          path: '/ChurchStudentsiExcursion',
        );

  static const String name = 'ChurchStudentsiExcursionRoute';
}

/// generated route for
/// [_i7.StudentsiExcursion]
class StudentsiExcursionRoute extends _i14.PageRouteInfo<void> {
  const StudentsiExcursionRoute()
      : super(
          StudentsiExcursionRoute.name,
          path: '/StudentsiExcursion',
        );

  static const String name = 'StudentsiExcursionRoute';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class EmptyRouterPageRoute extends _i14.PageRouteInfo<void> {
  const EmptyRouterPageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          EmptyRouterPageRoute.name,
          path: '/mapEmptyPage',
          initialChildren: children,
        );

  static const String name = 'EmptyRouterPageRoute';
}

/// generated route for
/// [_i9.MapPage]
class MapPageRoute extends _i14.PageRouteInfo<void> {
  const MapPageRoute()
      : super(
          MapPageRoute.name,
          path: '',
        );

  static const String name = 'MapPageRoute';
}

/// generated route for
/// [_i10.SpurExcursionList]
class SpurExcursionListRouter
    extends _i14.PageRouteInfo<SpurExcursionListRouterArgs> {
  SpurExcursionListRouter({
    _i15.Key? key,
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

  final _i15.Key? key;

  final int excListId;

  @override
  String toString() {
    return 'SpurExcursionListRouterArgs{key: $key, excListId: $excListId}';
  }
}

/// generated route for
/// [_i11.SaraktashExcursionList]
class SaraktashExcursionListRouter
    extends _i14.PageRouteInfo<SaraktashExcursionListRouterArgs> {
  SaraktashExcursionListRouter({
    _i15.Key? key,
    required int sarExcListId,
  }) : super(
          SaraktashExcursionListRouter.name,
          path: ':sarExcListId',
          args: SaraktashExcursionListRouterArgs(
            key: key,
            sarExcListId: sarExcListId,
          ),
          rawPathParams: {'sarExcListId': sarExcListId},
        );

  static const String name = 'SaraktashExcursionListRouter';
}

class SaraktashExcursionListRouterArgs {
  const SaraktashExcursionListRouterArgs({
    this.key,
    required this.sarExcListId,
  });

  final _i15.Key? key;

  final int sarExcListId;

  @override
  String toString() {
    return 'SaraktashExcursionListRouterArgs{key: $key, sarExcListId: $sarExcListId}';
  }
}

/// generated route for
/// [_i12.StudentsiExcursionList]
class StudentsiExcursionListRouter
    extends _i14.PageRouteInfo<StudentsiExcursionListRouterArgs> {
  StudentsiExcursionListRouter({
    _i15.Key? key,
    required int studExcListId,
  }) : super(
          StudentsiExcursionListRouter.name,
          path: ':studExcListId',
          args: StudentsiExcursionListRouterArgs(
            key: key,
            studExcListId: studExcListId,
          ),
          rawPathParams: {'studExcListId': studExcListId},
        );

  static const String name = 'StudentsiExcursionListRouter';
}

class StudentsiExcursionListRouterArgs {
  const StudentsiExcursionListRouterArgs({
    this.key,
    required this.studExcListId,
  });

  final _i15.Key? key;

  final int studExcListId;

  @override
  String toString() {
    return 'StudentsiExcursionListRouterArgs{key: $key, studExcListId: $studExcListId}';
  }
}

/// generated route for
/// [_i13.ReserveOrenExcursion]
class ReserveOrenExcursionRouter
    extends _i14.PageRouteInfo<ReserveOrenExcursionRouterArgs> {
  ReserveOrenExcursionRouter({
    _i15.Key? key,
    required int reserveId,
  }) : super(
          ReserveOrenExcursionRouter.name,
          path: ':reserveId',
          args: ReserveOrenExcursionRouterArgs(
            key: key,
            reserveId: reserveId,
          ),
          rawPathParams: {'reserveId': reserveId},
        );

  static const String name = 'ReserveOrenExcursionRouter';
}

class ReserveOrenExcursionRouterArgs {
  const ReserveOrenExcursionRouterArgs({
    this.key,
    required this.reserveId,
  });

  final _i15.Key? key;

  final int reserveId;

  @override
  String toString() {
    return 'ReserveOrenExcursionRouterArgs{key: $key, reserveId: $reserveId}';
  }
}
