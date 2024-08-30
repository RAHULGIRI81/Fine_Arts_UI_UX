import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_first_page.dart';
import 'package:fine_arts_ui_ux/Organizer_Fine_arts_UI_UX/Organizer_first_Page.dart';
import 'package:fine_arts_ui_ux/Student_Fine_Arts_UI_UX/Student_First_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fine_arts_ui extends StatefulWidget {
  const Fine_arts_ui({super.key});

  @override
  State<Fine_arts_ui> createState() => _Fine_arts_uiState();
}

class _Fine_arts_uiState extends State<Fine_arts_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.only(left: 140,top: 250),
        child: Column(
          children: [
            Text('Fine Arts UI',style: GoogleFonts.alumniSans(fontWeight: FontWeight.bold,fontSize: 40),),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Admin_first_page();
                },));
              },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('ASSETS/User.jpeg'),fit: BoxFit.fill),borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            Text('Admin',style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 40,),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Organizer_first_page();
              },));
            },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('ASSETS/User.jpeg'),fit: BoxFit.fill),borderRadius: BorderRadius.circular(50)),
              ),
            ),
            Text('Organizer',style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 40,),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Student_first_page();
              },));
            },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('ASSETS/User.jpeg'),fit: BoxFit.fill),borderRadius: BorderRadius.circular(50)),
              ),
            ),
            Text('Student',style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
