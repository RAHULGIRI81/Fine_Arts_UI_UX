import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_navigatin.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_student_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Admin_login_page extends StatefulWidget {
  const Admin_login_page({super.key});

  @override
  State<Admin_login_page> createState() => _Admin_login_pageState();
}

class _Admin_login_pageState extends State<Admin_login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
              )),
            ),
            SizedBox(height: 60.h),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  hintText: 'Username'),
            ),
            SizedBox(height: 20.h),
            TextField( obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  hintText: 'Password',),
            ),
            SizedBox(
              height: 30.h,
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Admin_navigation();
              },));
            },
              child: Container(
                width: 400.w,
                height: 50.h,
                decoration: BoxDecoration(color: Colors.indigo[900]),
                child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
