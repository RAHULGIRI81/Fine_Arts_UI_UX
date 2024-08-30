import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Organizer.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Organizer_2.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organier_Appeal%20Detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Organizer_appeal_list extends StatefulWidget {
  const Organizer_appeal_list({super.key});

  @override
  State<Organizer_appeal_list> createState() => _Organizer_appeal_listState();
}

class _Organizer_appeal_listState extends State<Organizer_appeal_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios_sharp),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'Appeal List',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(itemCount: 5,
                itemBuilder: (context, index) {
                return Column(children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Organizer_appeal_detail();
                  },));
                },
                  child: Container(
                    height: 60.h,
                    width: 400.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                      children: [ ListTile(
                        leading: Container(height: 40.w,width: 40.w,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('ASSETS/gallary.jpeg'))),),
                        title: Text(
                          'Name',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text('ID Number'),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25,left:260),
                          child: Text('Accepeted',style: GoogleFonts.poppins(color: Colors.green)),
                        )
                      ],
                    ),
                  ),
                ),
                  SizedBox(height: 10,)
                ],);
              },
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
