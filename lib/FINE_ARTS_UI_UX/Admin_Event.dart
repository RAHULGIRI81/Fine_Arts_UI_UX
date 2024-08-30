import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Add_Event.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_navigatin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Admin_Event extends StatefulWidget {
  const Admin_Event({super.key});

  @override
  State<Admin_Event> createState() => _Admin_EventState();
}

class _Admin_EventState extends State<Admin_Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,right: 20,left: 20),
        child: Column(
          children: [
            Center(
                child: Text(
              'Event',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
            Expanded(
              child: ListView.builder(itemCount: 1,
                itemBuilder:  (context, index) {
                return
                 Container(
                  width: 380.h,
                  height: 140.h,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 120,top: 20),
                        child: Row(
                          children: [
                            Text(
                              'Mohiniyattam',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            SizedBox(width: 60),
                            Icon(CupertinoIcons.delete_solid)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(children: [
                              Text('Date  :',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                              Text(' 7/12/2023',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                            ],),
                            Row(children: [
                              Text('Time :',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                              Text(' 10:00',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                            ],),
                            Row(children: [
                              Text('Stage :',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                              Text(' 3',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                            ],),
                          ],
                        ),
                      ),],
                  ),
                );

              },
              ),
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
               return Admin_add_event();
              },));
            },
              child: Padding(
                padding: const EdgeInsets.only(top: 380,left: 300),
                child: CircleAvatar(backgroundColor: Colors.amber,radius: 30,child: Icon(Icons.add,size: 40,color: Colors.white,),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
