import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';

class Buttonauth extends StatelessWidget {
  String text;
  Color backgroundcolor;
  Color fontcolor;
  String? image;
   Buttonauth({required this.backgroundcolor,required this.text,required this.fontcolor,this.image});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return  Expanded(
      child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundcolor, // لون الخلفية
        shape: RoundedRectangleBorder(
          borderRadius: image ==null ?
          BorderRadius.circular(25):
          BorderRadius.circular(10),// شكل دائري
        ),
        padding: EdgeInsets.symmetric(vertical: height*0.015),
      ),
      child: image ==null ?Text(
          text,
          style: Fontspath.w400readexPro16(color: fontcolor)
      ):
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                  text,
                  style: Fontspath.w400readexPro16(color:fontcolor)
              ),
              Image.asset(image!)
            ],
          )
    ),);
  }
}
