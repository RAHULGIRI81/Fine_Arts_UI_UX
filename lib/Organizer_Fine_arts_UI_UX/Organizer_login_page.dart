import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_navigatin.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_student_list.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Assignment_Event_Appeal_nav.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Organizer_login_page extends StatefulWidget {
  const Organizer_login_page({super.key});

  @override
  State<Organizer_login_page> createState() => _Organizer_login_pageState();
}

class _Organizer_login_pageState extends State<Organizer_login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration:
                BoxDecoration(shape: BoxShape.rectangle,image: DecorationImage(image: AssetImage('ASSETS/stage.jpg'),fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
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
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText: 'Username'),
              ),
              SizedBox(height: 20.h),
              TextField( obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText: 'Password'),
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Organizer_Assignment_event_Appeal_nav();
                },));
              },
                child: Container(
                  width: 400.w,
                  height: 50.h,
                  decoration: BoxDecoration(color: Colors.indigo[900]),
                  child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 40.h,),
              Column(children: [InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Organizer_Registraion();
                },));
              },child: Text('Create New Account',style: TextStyle(color: Colors.indigo[900],fontWeight: FontWeight.bold),))],)
            ],
          ),
        ),
      ),
    );
  }
}
