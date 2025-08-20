import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';

class Buttonauth extends StatelessWidget {
  final String text;
  final Color backgroundcolor;
  final Color fontcolor;
  final String? image;
  final bool isclick;
  final VoidCallback? onTap;

  const Buttonauth({
    super.key,
    required this.backgroundcolor,
    required this.text,
    required this.fontcolor,
    this.image,
    this.isclick = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isclick ? onTap : null,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: image ==null?Text(
          text,
          style: TextStyle(
            color: fontcolor,
            fontWeight: FontWeight.bold,
          ),
        ):
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: fontcolor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(image!)
              ],
            )
      ),
    );
  }
}
