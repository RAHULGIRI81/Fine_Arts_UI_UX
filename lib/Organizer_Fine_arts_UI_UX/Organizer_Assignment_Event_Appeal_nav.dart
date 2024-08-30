
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Event.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Organizer_list.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_student_list.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Appeal.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Assigned.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Event.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_event_Result.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_event_and_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Organizer_Assignment_event_Appeal_nav extends StatefulWidget {
  const Organizer_Assignment_event_Appeal_nav({super.key});

  @override
  State<Organizer_Assignment_event_Appeal_nav> createState() => _StdListState();
}

class _StdListState extends State<Organizer_Assignment_event_Appeal_nav> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child:
            TabBarView(children: [
              Organizer_Assigned(),
              Organizer_event_and_result(),
              Organizer_appeal(),
            ])
            ),
            SizedBox(
              height: 10.h,
            ),
            Stack(
              children: [
                Container(
                  height: 60.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(32, 69, 99, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      indicatorColor: Colors.white,
                      indicator: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromRGBO(253, 190, 64, 1),
                          borderRadius: BorderRadius.circular(10)),
                      indicatorPadding: EdgeInsets.only(top: 10, bottom: 10),
                      tabs: [
                        Tab(
                          child: Container(
                            height: 30.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Assign',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 30.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Event',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 30.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Appeal',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      ]),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
