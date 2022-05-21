import 'package:flutter/material.dart';

import 'menu_side.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(color: Colors.red, child: const MenuSide(),)),
        Expanded(child: Container(color: Colors.lightBlue), flex: 5)
      ],
    );
  }
}
