import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Organizer_list.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_navigatin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Admin_organizer extends StatefulWidget {
  const Admin_organizer({super.key});

  @override
  State<Admin_organizer> createState() => _Admin_organizerState();
}

class _Admin_organizerState extends State<Admin_organizer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Admin_navigation();
                    },));
                  },child: Container(height:30,width: 30,child: Icon(Icons.arrow_back_ios_sharp))),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Text(
                      'Organizer',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
              SizedBox(height: 80.h),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.indigo,backgroundImage: AssetImage('ASSETS/User.jpeg'),
                    radius: 60,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Name',
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(height: 60.h),
              Column(
                children: [
                  Row(
                    children: [
                      Text('ID Number',style: TextStyle(fontSize: 16.sp),),
                    ],
                  ),
                  TextField(readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                        hintText: '0000000'),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Phone No',style: TextStyle(fontSize: 16.sp),),
                    ],
                  ),
                  TextField(readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                        hintText: '8129222401',),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40,top: 100),
                child: Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Admin_navigation();
                      },));
                    },
                      child: Container(
                        height: 40.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                            color: Colors.green[900],
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(child: Text('Accept',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 40.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                          color: Colors.red[900],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text('Reject',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
