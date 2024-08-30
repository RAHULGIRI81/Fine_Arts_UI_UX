
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Event.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Organizer_list.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_student_list.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Appeal.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Assigned.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Event.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_event_Result.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_event_and_result.dart';
import 'package:fine_arts_ui_ux/Student_Fine_Arts_UI_UX/Student_Event.dart';
import 'package:fine_arts_ui_ux/Student_Fine_Arts_UI_UX/Student_Result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class Student_event_result_nav extends StatefulWidget {
  const Student_event_result_nav({super.key});

  @override
  State<Student_event_result_nav> createState() => _StdListState();
}

class _StdListState extends State<Student_event_result_nav> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child:
            TabBarView(children: [
              Student_Event(),
              Student_result(),
            ])
            ),
            Stack(
              children: [
                Container(
                  height: 50.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      color: Colors.indigo[900],
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      indicatorColor: Colors.white,
                      indicator: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromRGBO(253, 190, 64, 1),
                          borderRadius: BorderRadius.circular(10)),
                      tabs: [
                        Tab(
                          child: Container(
                            height: 70.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Event',
                                  style: GoogleFonts.poppins(color: Colors.white),
                                )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 70.h,
                            width: 300.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Result',
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
