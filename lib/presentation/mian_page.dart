import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_zone/route/router.gr.dart';
import 'package:travel_zone/widgets/previews.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SizedBox(height: constraints.maxHeight, child: YandexMap());
          },
        ),
        DraggableScrollableSheet(
            initialChildSize: 0.1,
            minChildSize: 0.1,
            maxChildSize: 0.5,
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
                            image: Image.asset(
                              'assets/images/mustafino/mustafino.jpg',
                              fit: BoxFit.cover,
                            ),
                            title: 'с.Мустафино',
                            description: 'Экскурсия по селу Мустафино'),
                        SizedBox(
                          height: 10,
                        ),
                        PreviewButton(
                            image: Image.asset(
                              'assets/images/kazanka/kazanka.jpg',
                              fit: BoxFit.cover,
                            ),
                            title: 'с.Казанка',
                            description: 'Экскурсия по селу Казанка'),
                        SizedBox(
                          height: 10,
                        ),
                        PreviewButton(
                            image: Image.asset(
                              'assets/images/grigorievka/grigorievka.jpeg',
                              fit: BoxFit.cover,
                            ),
                            title: 'с.Григорьевка',
                            description: 'Экскурсия по селу Григорьевка'),
                        SizedBox(
                          height: 10,
                        ),
                        PreviewButton(
                            image: Image.asset(
                              'assets/images/oren_reserve/reserve.jpeg',
                              fit: BoxFit.cover,
                            ),
                            title: '"Оренбургский"',
                            description: 'Оренбургский заповедник'),
                      ],
                    ),
                  ),
                ]),
              );
            })
      ]),
    );
  }
}
