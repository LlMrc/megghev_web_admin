import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CustomText(text: 'about',));
  }
}