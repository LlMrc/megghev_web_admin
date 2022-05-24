import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(child: CustomText(text: 'Article',));
  }
}