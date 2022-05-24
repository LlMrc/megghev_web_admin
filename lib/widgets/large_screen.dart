import 'package:flutter/material.dart';

import '../helpers/local_navigator.dart';
import 'menu_side.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SideMenu()),
        Expanded(child: navigator(), flex: 5)
      ],
    );
  }
}
