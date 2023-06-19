import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_zone/presentation/routes/black_spur/village_excursion.dart';
import 'package:travel_zone/route/router.gr.dart';
import 'package:travel_zone/widgets/text.dart';

import '../../../widgets/previews.dart';

class SpurExcursionList extends StatefulWidget {
  final int excListId;

  const SpurExcursionList({super.key, @PathParam() required this.excListId});

  @override
  State<SpurExcursionList> createState() => _SpurExcursionListState();
}

class _SpurExcursionListState extends State<SpurExcursionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: mainText('с.Черный Отрог', Colors.black),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[
                    Color(0xFFa9ca91),
                    Color(0xFF80d0ea),
                  ]),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              clipBehavior: Clip.none,
              children: <Widget>[
                PreviewButton(
                    onPressed: () {
                      context.router.navigate(SpurVillageExcursionRoute());
                    },
                    image: Image.asset(
                      'assets/images/saraktash/mustafino.jpg',
                      fit: BoxFit.cover,
                    ),
                    title: 'Село Черный Отрог',
                    description: 'родина Виктора Черномырдина'),
                SizedBox(
                  height: 10,
                ),
                PreviewButton(
                    onPressed: () {
                      context.router.navigate(StationSpurExcursionRoute());
                    },
                    image: Image.asset(
                      'assets/images/black_spur/rzd.jpeg',
                      fit: BoxFit.cover,
                    ),
                    title: 'Станция Черный Отрог',
                    description: 'Экскурсия по станции села'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
