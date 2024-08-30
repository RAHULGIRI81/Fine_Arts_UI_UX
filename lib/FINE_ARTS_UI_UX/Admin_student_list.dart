import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_student_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Admin_student_list extends StatefulWidget {
  const Admin_student_list({super.key});

  @override
  State<Admin_student_list> createState() => _Admin_student_listState();
}

class _Admin_student_listState extends State<Admin_student_list> {
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
                'Students List',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
              )),
            ),
            SizedBox(height: 20.h,),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Admin_student_detail();
                        },));
                      },
                        child: Container(height: 60.h,width: 400.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),color: Colors.white,border:Border.all(color: Colors.black),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.indigo,backgroundImage:  AssetImage('ASSETS/User.jpeg'),
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
