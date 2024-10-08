import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Event.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_navigatin.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Assignment_Event_Appeal_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Organizer_edit_event extends StatefulWidget {
  const Organizer_edit_event({super.key});

  @override
  State<Organizer_edit_event> createState() => _Organizer_edit_eventState();
}

class _Organizer_edit_eventState extends State<Organizer_edit_event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    InkWell(onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder:(context) {
                        return Admin_navigation();
                      },));
                    },child: Container(height:30,width:30,child: Icon(Icons.arrow_back_ios_sharp))),
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text(
                        'Edit Event',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 60.h),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: '0000000'),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'DD/MM/YYYY'),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Stage No',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: '000000'),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Time',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: '00:00'),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 80.h,
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return Organizer_Assignment_event_Appeal_nav();
                },));
              },
                child: Padding(
                  padding: const EdgeInsets.only( top: 10,left: 8),
                  child: Row(
                    children: [
                      Container(
                        height: 50.h,
                        width: 310.w,
                        decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            )),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
