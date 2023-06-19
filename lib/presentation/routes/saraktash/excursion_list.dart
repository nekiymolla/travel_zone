import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_zone/route/router.gr.dart';
import 'package:travel_zone/widgets/previews.dart';

import '../../../widgets/text.dart';

class SaraktashExcursionList extends StatefulWidget {
  final int sarExcListId;
  const SaraktashExcursionList(
      {super.key, @PathParam() required this.sarExcListId});

  @override
  State<SaraktashExcursionList> createState() => _SaraktashExcursionListState();
}

class _SaraktashExcursionListState extends State<SaraktashExcursionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: mainText('Поселок Саракташ', Colors.black),
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
                      context.router.navigate(SaraktashExcursionRoute());
                    },
                    image: Image.asset(
                      'assets/images/saraktash/saraktash1.jpeg',
                      fit: BoxFit.cover,
                    ),
                    title: 'Поселок Саракташ',
                    description: 'Железный путь'),
                SizedBox(
                  height: 10,
                ),
                PreviewButton(
                    onPressed: () {
                      context.router.navigate(ChurchSaraktashExcursionRoute());
                    },
                    image: Image.asset(
                      'assets/images/saraktash/church.jpg',
                      fit: BoxFit.cover,
                    ),
                    title: 'Храм Иоанна Богослова',
                    description: 'Православный храм'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
