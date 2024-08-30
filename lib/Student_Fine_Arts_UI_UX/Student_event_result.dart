import 'dart:io';

import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_navigatin.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_student_list.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_event_Result.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_event_and_result.dart';
import 'package:fine_arts_ui_ux/Student_Fine_Arts_UI_UX/Student_Apply_Appeal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class Student_event_result extends StatefulWidget {
  const Student_event_result({super.key});

  @override
  State<Student_event_result> createState() => _Student_event_resultState();
}

class _Student_event_resultState extends State<Student_event_result> {
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
                      'Event Result',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Text(
                    'Mohiniyattam',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 80),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text('18/07/23')
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Stage',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text('02')
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Time',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.sp),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text('1:30 pm')
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.sp),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text('Ground')
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Result',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(children: [
                    Container(
                      height: 300,
                      width: 300,
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
                      padding: const EdgeInsets.only(top: 300,left: 100),
                      child: ElevatedButton(onPressed: () {
                        _pickImage();
                      }, child: Text('Pick Image')),
                    )
          
                  ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Student_apply_appeal();
                      },));
                    },
                      child: Container(
                        height: 50.h,
                        width: 310.w,
                        decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                              'Appeal',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            )),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
