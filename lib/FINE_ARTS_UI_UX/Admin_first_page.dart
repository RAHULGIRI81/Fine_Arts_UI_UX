import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Admin_first_page extends StatefulWidget {
  const Admin_first_page({super.key});

  @override
  State<Admin_first_page> createState() => _Admin_first_pageState();
}

class _Admin_first_pageState extends State<Admin_first_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: InkWell(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Admin_login_page();
        },));
      },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100,top: 320),
              child: Container(
                width: 200.w,
                height: 200.h,
                decoration:
                    BoxDecoration(shape: BoxShape.rectangle,image: DecorationImage(image: AssetImage('ASSETS/stage.jpg'),fit: BoxFit.cover)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
