import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:travel_zone/presentation/mian_page.dart';
import 'package:travel_zone/presentation/routes/black_spur/excursion_list.dart';
import 'package:travel_zone/presentation/routes/black_spur/village_excursion.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(
    page: SpurVillageExcursion,
    path: '/SpurVillageExcursion',
    name: 'spurVillageExcursionRoute',
  ),
  AutoRoute(
      page: EmptyRouterPage,
      initial: true,
      path: '/mapEmptyPage',
      children: [
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
      ]),
])
class $AppRouter {}
