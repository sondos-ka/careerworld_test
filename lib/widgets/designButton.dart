import 'package:careerworld/consts/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget designButton(String buttonText,bool isColorful,w,bool isArabic,Function onPressed) {
  return Container(
    height: 7.h,
    margin: EdgeInsets.all(20),
    child: RaisedButton(
      onPressed: () { onPressed();},
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80.0)),
      padding: EdgeInsets.all(0.0),
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: isColorful? [cGreenDark,cGreenLight,cGreenBetween,cGreenLight]:[Colors.white,Colors.white],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30.0)),
        child: Container(
          constraints:
          BoxConstraints(maxWidth: w, minHeight: 7.h),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text(buttonText,
               style: TextStyle(
                   color: isColorful?Colors.white:cGreenBlue, fontSize:20,),
             ),
        SizedBox(width: 3.w,),
        Container(
          height: 3.h,


          child:isArabic? Image.asset("assets/right_icon.png"):Image.asset("assets/left_icon.png"),)
            ],
          ),
        ),
      ),
    ),
  );
}
