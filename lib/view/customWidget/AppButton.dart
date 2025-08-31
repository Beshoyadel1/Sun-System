import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../view/customWidget/AppText.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color backgroundcolor;
  final Color fontcolor;
  final String? image;
  final VoidCallback? onTap;
  final double? widthText;
  final double? heightText;
  const AppButton({
    super.key,
    required this.backgroundcolor,
    required this.text,
    required this.fontcolor,
    this.image,
    this.onTap,
    this.widthText,
    this.heightText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child: Container(
          width: widthText,
          height: heightText,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: backgroundcolor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: image == null
              ? AppText(
            text: text,
            style: TextStyle(
              color: fontcolor,
              fontWeight: FontWeight.bold,
            ),
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(child: AppText(
                text: text,
                style: TextStyle(
                  color: fontcolor,
                  fontWeight: FontWeight.bold,
                ),
              ),),
              Image.asset(image!)
            ],
          ),
        ),
    );
  }
}
