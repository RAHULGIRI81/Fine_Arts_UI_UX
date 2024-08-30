import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Add_Event.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_navigatin.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Participants_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Organizer_Event extends StatefulWidget {
  const Organizer_Event({super.key});

  @override
  State<Organizer_Event> createState() => _Organizer_EventState();
}

class _Organizer_EventState extends State<Organizer_Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10,right: 20,left: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemCount: 1,itemBuilder: (context, index) {
                return
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Organizer_participants_list();
                    },));
                  },
                    child: Container(
                    width: 380.h,
                    height: 60.h,
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadiusDirectional.circular(10)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 140,top: 20),
                          child: Row(
                            children: [
                              Text(
                                'Kuchupidi',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              SizedBox(width: 80),
                            ],
                          ),
                        ),

                     ],
                    ),
                                    ),
                  );
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
