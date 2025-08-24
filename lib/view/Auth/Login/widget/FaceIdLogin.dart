import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utiles/assets/ImagePath.dart';

class FaceIdLogin extends StatelessWidget {
  const FaceIdLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Image.asset(ImagePath.faceId, height: 50),
    );
  }
}
