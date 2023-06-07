import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.height,
    required this.width,
    required this.location,
  });
  final double height;
  final double width;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: defBodyPadding / 3,
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
      child: TextField(
        autocorrect: false,
        autofocus: true,
        cursorColor: darkColor,
        keyboardType: TextInputType.number,
        maxLines: 2,
        minLines: 1,
        style: TextStyle(
          color: darkColor,
          overflow: TextOverflow.clip,
          fontSize: 12,
        ),
        readOnly: true,

        // maxLengthEnforcement: MaxLengthEnforcement.enforced,
        // controller: _textController,
        // onSubmitted: (value) {
        //   if (kDebugMode) {
        //     //captures the value when tick sign is clicked
        //     print(value);
        //   }
        // },
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          labelText: location.isEmpty ? "Unknown Location" : location,
          labelStyle: TextStyle(
            color: darkColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
