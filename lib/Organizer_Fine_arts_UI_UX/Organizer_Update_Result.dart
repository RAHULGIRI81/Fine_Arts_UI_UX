import 'dart:io';

import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_navigatin.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_student_list.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_Assignment_Event_Appeal_nav.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_appeal_list.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_event_Result.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_event_and_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Organizer_update_result extends StatefulWidget {
  const Organizer_update_result({super.key});

  @override
  State<Organizer_update_result> createState() =>
      _Organizer_update_resultState();
}

class _Organizer_update_resultState extends State<Organizer_update_result> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

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
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Organizer_event_and_result();
                          },
                        ));
                      },
                      child: Container(
                          height: 30,
                          width: 30,
                          child: Icon(Icons.arrow_back_ios_sharp))),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      'Update Result',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Event Name',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ],
                  ),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Margamkali'),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Vidio Link',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ],
                  ),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'www,httrsgssbz',
                        hintStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Discription',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    width: 400,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Result',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: 370,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: _image == null
                            ? Center(child: Text(''))
                            : Image.file(
                                _image!,
                                fit: BoxFit.cover,
                              ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 180,left: 130),
                        child: ElevatedButton(onPressed: () {
                          _pickImage();
                        }, child: Text('Pick Image')),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Organizer_Assignment_event_Appeal_nav();
                  },));
                },
                  child: Container(
                    width: 380,
                    height: 60,
                    decoration: BoxDecoration(color: Colors.indigo[900]),
                    child: Center(child: Text('Submit',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
