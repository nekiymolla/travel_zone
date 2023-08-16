import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:travel_zone/presentation/mian_page.dart';
import 'package:travel_zone/presentation/routes/black_spur/excursion_list.dart';
import 'package:travel_zone/presentation/routes/black_spur/station_black_spur.dart';
import 'package:travel_zone/presentation/routes/black_spur/village_excursion.dart';
import 'package:travel_zone/presentation/routes/oren_reserve/oren_reserve.dart';
import 'package:travel_zone/presentation/routes/saraktash/excursion_list.dart';
import 'package:travel_zone/presentation/routes/saraktash/saraktach_church.dart';
import 'package:travel_zone/presentation/routes/saraktash/saraktash_excursion.dart';
import 'package:travel_zone/presentation/routes/studentsi/excursion_list.dart';
import 'package:travel_zone/presentation/routes/studentsi/studentsi_church.dart';
import 'package:travel_zone/presentation/routes/studentsi/studentsi_excursion.dart';
import 'package:travel_zone/presentation/video_page.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(
    page: VideoPlayerView,
    initial: true,
  ),
  AutoRoute(
    page: SpurVillageExcursion,
    path: '/SpurVillageExcursion',
    name: 'spurVillageExcursionRoute',
  ),
  AutoRoute(
    page: StationBlackSpurExcursion,
    path: '/StationBlackSpurExcursion',
    name: 'stationSpurExcursionRoute',
  ),
  AutoRoute(
    page: SaraktashExcursion,
    path: '/SaraktashExcursion',
    name: 'saraktashExcursionRoute',
  ),
  AutoRoute(
    page: ChurchSaraktashExcursion,
    path: '/ChurchSaraktashExcursion',
    name: 'churchSaraktashExcursionRoute',
  ),
  AutoRoute(
    page: ChurchStudentsi,
    path: '/ChurchStudentsiExcursion',
    name: 'churchStudentsiExcursionRoute',
  ),
  AutoRoute(
    page: StudentsiExcursion,
    path: '/StudentsiExcursion',
    name: 'studentsiExcursionRoute',
  ),
  AutoRoute(page: EmptyRouterPage, path: '/mapEmptyPage', children: [
    AutoRoute(
      path: '',
      page: MapPage,
      name: 'MapPageRoute',
    ),
    AutoRoute(
      path: ':excListId',
      name: 'SpurExcursionListRouter',
      page: SpurExcursionList,
    ),
    AutoRoute(
      path: ':sarExcListId',
      name: 'SaraktashExcursionListRouter',
      page: SaraktashExcursionList,
    ),
    AutoRoute(
      path: ':studExcListId',
      name: 'StudentsiExcursionListRouter',
      page: StudentsiExcursionList,
    ),
    AutoRoute(
      path: ':reserveId',
      name: 'ReserveOrenExcursionRouter',
      page: ReserveOrenExcursion,
    ),
  ]),
])
class $AppRouter {}
