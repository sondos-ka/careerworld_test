import 'package:careerworld/consts/Colors.dart';
import 'package:careerworld/consts/styles.dart';
import 'package:careerworld/services/LocalProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


class topWidget extends StatefulWidget {
  @override
  _topWidgetState createState() => _topWidgetState();
}

class _topWidgetState extends State<topWidget> {
  @override
  Widget build(BuildContext context) {

          return Consumer<LocaleProvider>(builder: (context, provider, snapshot)
          {
            return Container(
              height: 20.h,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Stack(

                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 20.h,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/backgroud.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 2.h,
                    right:  provider.isArabic?4.w:0,
                    left:  provider.isArabic?0:4.w,

                    child: Row(

                     textDirection: provider.isArabic? TextDirection.rtl:TextDirection.ltr,
                      children: [

                        Container(

                          height: 2.5.h,
                          width: 11.w,
                          decoration: BoxDecoration(
                              color: cGreenWhite,
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: GestureDetector(
                              onTap: () {

                                if (provider.isArabic == true)
                                  provider.setLocale(Locale.fromSubtags(languageCode: 'ar'));

                                else
                                  provider.setLocale(Locale.fromSubtags(languageCode: 'en'));
                              },
                              child: Row(

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(1.5),
                                    child: CircleAvatar(
                                      backgroundColor: cGreenBlue, radius: 8,),
                                  ),
                                  SizedBox(width: 1.w,),

                                  Text(provider.isArabic?"En":"Ar", style: tsLang)
                                ],
                              )),

                        ),


                        SizedBox(width: MediaQuery
                            .of(context)
                            .orientation == Orientation.portrait ? 32.w : 75
                            .w,),

                        Container(
                          height: 5.h,
                          width: 10.w,
                          child: Image.asset("assets/babion.png"),
                        ),

                      ],
                    )
                    ,
                  ),


                ],
              ),

            );
          }
          );

  }
}





//video_player: 2.1.14