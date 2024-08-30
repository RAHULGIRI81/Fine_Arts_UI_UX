import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Organizer.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Organizer_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Organizer_participants_list extends StatefulWidget {
  const Organizer_participants_list({super.key});

  @override
  State<Organizer_participants_list> createState() => _Organizer_participants_listState();
}

class _Organizer_participants_listState extends State<Organizer_participants_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Center(
                child: Text(
              'Participants List',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 60.h,
                width: 400.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black,),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,backgroundImage: AssetImage('ASSETS/User.jpeg'),
                  ),
                  title: Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text('ID Number'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60.h,
              width: 400.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,backgroundImage: AssetImage('ASSETS/User.jpeg'),
                ),
                title: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text('ID Number'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60.h,
              width: 400.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,backgroundImage: AssetImage('ASSETS/User.jpeg'),
                ),
                title: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text('ID Number'),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
