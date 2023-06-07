import 'package:flutter/material.dart';

import '../constants.dart';

class customContainer extends StatelessWidget {
  const customContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: darkColor,
          strokeAlign: BorderSide.strokeAlignOutside,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: greyColor,
            spreadRadius: 2,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      ),
    );
  }
}
