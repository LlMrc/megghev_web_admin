import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CustomText(text: 'Authentication',));
  }
}