import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  var controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }
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




