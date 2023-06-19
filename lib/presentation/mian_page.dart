import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:travel_zone/route/router.gr.dart';
import 'package:travel_zone/widgets/previews.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GlobalKey mapKey = GlobalKey();
  late YandexMapController controller;

  Future<bool> get locationPermissionNotGranted async =>
      !(await Permission.location.request().isGranted);

  void _showMessage(BuildContext context, Text text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: text));
  }

  List<MapObject> mapObjects(BuildContext context) {
    return <MapObject>[
      PlacemarkMapObject(
        mapId: MapObjectId('black_spur'),
        point: Point(latitude: 51.886880, longitude: 55.999591),
        onTap: (PlacemarkMapObject self, Point point) {
          context.router.navigate(SpurExcursionListRouter(excListId: 1));
        },
        opacity: 1,
        direction: 0,
        icon: PlacemarkIcon.single(
          PlacemarkIconStyle(
              image: BitmapDescriptor.fromAssetImage(
                'assets/mapimages/geometka.png',
              ),
              rotationType: RotationType.rotate),
        ),
      ),
      PlacemarkMapObject(
        mapId: MapObjectId('saraktash'),
        point: Point(latitude: 51.782136, longitude: 56.357759),
        onTap: (PlacemarkMapObject self, Point point) {
          context.router
              .navigate(SaraktashExcursionListRouter(sarExcListId: 1));
        },
        opacity: 1,
        direction: 0,
        icon: PlacemarkIcon.single(
          PlacemarkIconStyle(
              image: BitmapDescriptor.fromAssetImage(
                'assets/mapimages/geometka.png',
              ),
              rotationType: RotationType.rotate),
        ),
      ),
      PlacemarkMapObject(
        mapId: MapObjectId('studentsi'),
        point: Point(latitude: 51.86726818829387, longitude: 55.85910413958319),
        onTap: (PlacemarkMapObject self, Point point) {
          context.router
              .navigate(StudentsiExcursionListRouter(studExcListId: 1));
        },
        opacity: 1,
        direction: 0,
        icon: PlacemarkIcon.single(
          PlacemarkIconStyle(
              image: BitmapDescriptor.fromAssetImage(
                'assets/mapimages/geometka.png',
              ),
              rotationType: RotationType.rotate),
        ),
      ),
      PlacemarkMapObject(
        mapId: MapObjectId('puh_platok'),
        point: Point(latitude: 51.789146547287274, longitude: 55.1479283059283),
        onTap: (PlacemarkMapObject self, Point point) {
          context.router.navigate(ReserveOrenExcursionRouter(reserveId: 1));
        },
        opacity: 1,
        direction: 0,
        icon: PlacemarkIcon.single(
          PlacemarkIconStyle(
              image: BitmapDescriptor.fromAssetImage(
                'assets/mapimages/geometka.png',
              ),
              rotationType: RotationType.rotate),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SizedBox(
                height: constraints.maxHeight,
                child: YandexMap(
                  key: mapKey,
                  onMapCreated:
                      (YandexMapController yandexMapController) async {
                    controller = yandexMapController;
                  },
                  mapObjects: mapObjects(context),
                  onUserLocationAdded: (UserLocationView view) async {
                    return view.copyWith(
                        pin: view.pin.copyWith(
                          icon: PlacemarkIcon.single(
                            PlacemarkIconStyle(
                              image: BitmapDescriptor.fromAssetImage(
                                  'assets/mapimages/place.png'),
                            ),
                          ),
                        ),
                        arrow: view.arrow.copyWith(
                          icon: PlacemarkIcon.single(
                            PlacemarkIconStyle(
                              image: BitmapDescriptor.fromAssetImage(
                                'assets/mapimages/arrow.png',
                              ),
                            ),
                          ),
                        ),
                        accuracyCircle: view.accuracyCircle.copyWith(
                            fillColor:
                                const Color(0xFF80d0ea).withOpacity(0.5)));
                  },
                ));
          },
        ),
        DraggableScrollableSheet(
            initialChildSize: 0.1,
            minChildSize: 0.1,
            maxChildSize: 0.6,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFFa9ca91),
                        Color(0xFF80d0ea),
                      ],
                    )),
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 50),
                    child: Divider(
                      thickness: 5,
                      indent: 180,
                      endIndent: 180,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      clipBehavior: Clip.none,
                      physics: ClampingScrollPhysics(),
                      controller: scrollController,
                      children: <Widget>[
                        PreviewButton(
                            onPressed: () {
                              context.router.navigate(
                                  SpurExcursionListRouter(excListId: 1));
                            },
                            image: Image.asset(
                              'assets/images/black_spur/church.jpg',
                              fit: BoxFit.cover,
                            ),
                            title: 'с.Черный Отрог',
                            description: 'Экскурсия по селу Черный Отрог'),
                        SizedBox(
                          height: 10,
                        ),
                        PreviewButton(
                            onPressed: () {
                              context.router.navigate(
                                  SaraktashExcursionListRouter(
                                      sarExcListId: 1));
                            },
                            image: Image.asset(
                              'assets/images/saraktash/mustafino.jpg',
                              fit: BoxFit.cover,
                            ),
                            title: 'п.Саракташ',
                            description: 'Экскурсия по Саракташу'),
                        SizedBox(
                          height: 10,
                        ),
                        PreviewButton(
                            onPressed: () {
                              context.router.navigate(
                                  StudentsiExcursionListRouter(
                                      studExcListId: 1));
                            },
                            image: Image.asset(
                              'assets/images/studentsi/kazanka.jpg',
                              fit: BoxFit.cover,
                            ),
                            title: 'с.Студенцы',
                            description: 'Экскурсия по селу Студенцы'),
                        SizedBox(
                          height: 10,
                        ),
                        PreviewButton(
                            onPressed: () {
                              context.router.navigate(
                                  ReserveOrenExcursionRouter(reserveId: 1));
                            },
                            image: Image.asset(
                              'assets/images/oren_reserve/zavod.jpeg',
                              fit: BoxFit.cover,
                            ),
                            title: 'Пуховый платок',
                            description: 'Оренбургский Пуховый Платок'),
                      ],
                    ),
                  ),
                ]),
              );
            })
      ]),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 150,
            ),
            child: FloatingActionButton(
              backgroundColor: Color(0xFF80d0ea),
              onPressed: () async {
                if (await locationPermissionNotGranted) {
                  _showMessage(
                      context, const Text('Нужно разрешение на геолокацию'));
                  return;
                }
                final mediaQuery = MediaQuery.of(context);
                final height = mapKey.currentContext!.size!.height *
                    mediaQuery.devicePixelRatio;
                final width = mapKey.currentContext!.size!.width *
                    mediaQuery.devicePixelRatio;
                await controller.toggleUserLayer(
                    visible: true,
                    autoZoomEnabled: true,
                    anchor: UserLocationAnchor(
                        course: Offset(0.5 * width, 0.5 * height),
                        normal: Offset(0.5 * width, 0.5 * height)));
              },
              child: const Icon(Icons.place_outlined),
            ),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
//Color(0xFF80d0ea),