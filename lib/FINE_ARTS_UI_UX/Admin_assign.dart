
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_Organizer_2.dart';
import 'package:fine_arts_ui_ux/FINE_ARTS_UI_UX/Admin_navigatin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin_assign extends StatefulWidget {
  const Admin_assign({super.key});

  @override
  State<Admin_assign> createState() => _Admin_assignState();
}

class _Admin_assignState extends State<Admin_assign> {

  bool _isAppleChecked = false;
  bool _isBananaChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Admin_organizer_2();
          },));
        }, icon: Icon(CupertinoIcons.back)),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            "Assign",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            ListTile(
              leading: Transform.scale(
                scale: 1.9,
                child: Checkbox(
                  activeColor: Colors.indigo[900],
                  value: _isAppleChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isAppleChecked = value!;
                      print(_isAppleChecked);
                    });
                  },
                ),
              ),
              title: Row(
                children: [
                  Container(
                    height: 45,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        border:
                        Border.all(color: Colors.indigo.shade900),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            "   Kathakali",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Transform.scale(
                scale: 1.9,
                child: Checkbox(
                  activeColor: Colors.indigo.shade900,
                  value: _isBananaChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isBananaChecked = value!;
                      print(_isBananaChecked);
                    });
                  },
                ),
              ),
              title: Row(
                children: [
                  Container(
                    height: 45,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        border:
                        Border.all(color: Colors.indigo.shade900),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            "   Kolkali",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 520,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Admin_navigation();
                    },));
                  },
                  child: Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.indigo.shade900,
                    ),
                    child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}