import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_first_Page.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_login_page.dart';
import 'package:fine_arts_ui_ux/Student_Fine_Arts_UI_UX/Student_First_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'FINE_ARTS_UI_UX/Admin_Add_Event.dart';
import 'FINE_ARTS_UI_UX/Admin_assign.dart';
import 'FINE_ARTS_UI_UX/Admin_navigatin.dart';
import 'FINE_ARTS_UI_UX/Admin_Event.dart';
import 'FINE_ARTS_UI_UX/Admin_Organizer.dart';
import 'FINE_ARTS_UI_UX/Admin_Organizer_list.dart';
import 'FINE_ARTS_UI_UX/Admin_Organizer_2.dart';
import 'FINE_ARTS_UI_UX/Admin_first_page.dart';
import 'FINE_ARTS_UI_UX/Admin_login_page.dart';
import 'FINE_ARTS_UI_UX/Admin_student_detail.dart';
import 'Fine_arts_ui.dart';
import 'Organizer_Fine_arts_UI_UX/Organier_Appeal Detail.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_Add_Result.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_Assignment_Event_Appeal_nav.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_Edit_event.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_Event.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_Event_detail.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_Assigned.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_Participants_list.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_Update_Result.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_appeal_list.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_event_Result.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_event_and_result.dart';
import 'Organizer_Fine_arts_UI_UX/Organizer_registration.dart';
import 'Student_Fine_Arts_UI_UX/Student_Apply.dart';
import 'Student_Fine_Arts_UI_UX/Student_Apply_Appeal.dart';
import 'Student_Fine_Arts_UI_UX/Student_Event.dart';
import 'Student_Fine_Arts_UI_UX/Student_Event_Detail.dart';
import 'Student_Fine_Arts_UI_UX/Student_Event_Result_nav.dart';
import 'Student_Fine_Arts_UI_UX/Student_Registration.dart';
import 'Student_Fine_Arts_UI_UX/Student_Result.dart';
import 'Student_Fine_Arts_UI_UX/Student_event_result.dart';
import 'Student_Fine_Arts_UI_UX/Student_login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: Size(360, 690),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:Fine_arts_ui(),
      ),
    );
  }
}
