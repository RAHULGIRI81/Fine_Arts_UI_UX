import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Organizer.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Organizer_2.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_student_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Admin_organizer_list extends StatefulWidget {
  const Admin_organizer_list({super.key});

  @override
  State<Admin_organizer_list> createState() => _Admin_organizer_listState();
}

class _Admin_organizer_listState extends State<Admin_organizer_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                  child: Text(
                    'Organizer List',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                  )),
            ),
            SizedBox(height: 10.h,),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Admin_organizer();
                        },));
                      },
                        child: Container(height: 60.h,width: 400.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),color: Colors.white,border:Border.all(color: Colors.black),
                          ),
                          child: ListTile(
                            leading: InkWell(onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Admin_organizer_2();
                              },));
                            },
                              child: CircleAvatar(
                                backgroundColor: Colors.indigo,backgroundImage:  AssetImage('ASSETS/User.jpeg'),
                              ),
                            ),
                            title: Text(
                              'Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text('ID Number'),
                          ),
                        ),
                      ),SizedBox(height: 20.h,)
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
