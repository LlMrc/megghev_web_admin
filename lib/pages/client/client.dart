import 'package:flutter/material.dart';
import 'package:megghe_web_admin/widgets/custom_text.dart';

class Clients extends StatelessWidget {
  const Clients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(child: CustomText(text: 'Client',));
  }
}