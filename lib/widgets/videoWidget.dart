import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VideoWidget extends StatefulWidget {
  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {

@override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          height: 35.h,
          width: MediaQuery.of(context).size.width-6.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: Colors.black,
              border: Border.all(color: Colors.white,width: 2)
          ),

        ),
        Center(
          child: Padding(
            padding:  EdgeInsets.only(top: 12.5.h),
            child: Container(
                height:10.h,child: Image.asset("assets/playicon.png")),
          ),
        )
      ],
    );
  }
}




