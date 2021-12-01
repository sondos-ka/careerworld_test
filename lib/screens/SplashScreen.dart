


import 'package:careerworld/consts/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';

import 'HomeScreen.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    new Future.delayed (
        const Duration(seconds: 3),
            () async{
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));

        })
    ;
  }
  @override
  Widget build(BuildContext context) {

    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            home: Scaffold(

              body: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/backgroud.png"),
                        fit: BoxFit.cover),
                  ),

                  child: Stack(

                    children: [
                      Positioned(
                           top: orientation==Orientation.portrait?  31.h:25.w,
                          left:orientation==Orientation.portrait?30.w: 40.h,

                          child: Column(
                            children: [
                              Image.asset("assets/babion.png"),
                              SizedBox(height: 2.h,),
                              Text(AppLocalizations.of(context)!.title,style: tsTitle,),

                            ],
                          )),
                    ],
                  )
              ),
            ),

          );
        }
      );

  }


}
