import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_zone/route/router.gr.dart';

import '../../../widgets/previews.dart';
import '../../../widgets/text.dart';

class StudentsiExcursionList extends StatefulWidget {
  final int studExcListId;

  const StudentsiExcursionList(
      {super.key, @PathParam() required this.studExcListId});

  @override
  State<StudentsiExcursionList> createState() => _StudentsiExcursionListState();
}

class _StudentsiExcursionListState extends State<StudentsiExcursionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: mainText('Село Студенцы', Colors.black),
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
                      context.router.navigate(StudentsiExcursionRoute());
                    },
                    image: Image.asset(
                      'assets/images/studentsi/stud_selo.jpeg',
                      fit: BoxFit.cover,
                    ),
                    title: 'Село Студенцы',
                    description: 'Близ реки "Студенцы"'),
                SizedBox(
                  height: 10,
                ),
                PreviewButton(
                    onPressed: () {
                      context.router.navigate(ChurchStudentsiExcursionRoute());
                    },
                    image: Image.asset(
                      'assets/images/studentsi/church_stud.jpeg',
                      fit: BoxFit.cover,
                    ),
                    title: 'Храм Покрова',
                    description: 'Пресвятой Благородицы'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
