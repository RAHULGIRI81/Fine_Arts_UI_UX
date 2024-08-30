import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Event_detail.dart';
import 'package:fine_arts_ui_ux/Student_Fine_Arts_UI_UX/Student_event_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../FINE_ARTS_UI_UX/Admin_Add_Event.dart';

class Student_result extends StatefulWidget {
  const Student_result({super.key});

  @override
  State<Student_result> createState() => _Student_resultState();
}

class _Student_resultState extends State<Student_result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
        child: Column(
          children: [
            Text('Result',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 25),),
            Expanded(
              child: ListView.builder(itemCount: 2,itemBuilder: (context, index) {
                return
                 InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Student_event_result();
                  },));
                },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50.h,
                      width: 400.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blue),
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(color: Colors.indigo,image: DecorationImage(image: AssetImage('ASSETS/gallary.jpeg'),fit:BoxFit.fill)),
                        ),
                        title: Text(
                          'Mohiniyattam',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                );
              },
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
