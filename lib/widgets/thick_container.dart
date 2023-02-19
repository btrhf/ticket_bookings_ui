import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(3)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
        border: Border.all(width: 2.5, color: Colors.white)
      ),
    );
  }
}
