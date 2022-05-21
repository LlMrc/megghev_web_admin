import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final String text;

  const CustomText(
      {Key? key,
       this.color,
       this.size,
       this.fontWeight, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color?? Colors.black,

     fontWeight: fontWeight?? FontWeight.normal, fontSize: size ?? 16),);
  }
}
