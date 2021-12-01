
import 'package:careerworld/consts/Colors.dart';
import 'package:careerworld/services/LocalProvider.dart';
import 'package:careerworld/services/fetchData.dart';
import 'package:careerworld/widgets/designButton.dart';
import 'package:careerworld/widgets/letters_grid.dart';
import 'package:careerworld/widgets/topWidget.dart';
import 'package:careerworld/widgets/videoWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isWithDiscription=false;
  @override
  Widget build(BuildContext context) {

    return Consumer<LocaleProvider>(builder: (context, provider, snapshot)
    {
      return Sizer(
        builder: (context, orientation, deviceType) {
          return SafeArea(
            child: Material(
              child: Column(
                children: [
                 Stack(
                    children: [
                      topWidget(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(3.w, 12.h,3.w,0),
                        child: VideoWidget(),
                      ),
                    ],
                  )



                 ,
                 designButton(AppLocalizations.of(context)!.description, true,MediaQuery.of(context).size.width-4.w,provider.isArabic,(){
                setState(() {
                  isWithDiscription=!isWithDiscription;
                });
                 print(isWithDiscription.toString());}),
                  FutureBuilder<CareerData>(

                      future: getData(AppLocalizations.of(context)!.link),

                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Text("error:" + snapshot.error.toString());
                        } else if (snapshot.hasData && isWithDiscription==false) {
                          return letterGrid(snapshot.data!.letters,10.h,20.w
                          );

                        }
                        else if (snapshot.hasData && isWithDiscription==true) {

                          return Expanded(
                            child: Column(
                              children: [
                                Text(snapshot.data!.description),
                                letterGrid(snapshot.data!.letters,30.h,20.w
                                ),
                              ],
                            ),
                          );

                        }

                        return Center(
                          child: CircularProgressIndicator(color: cGreenBlue,),
                        );
                      }
                  )
,
                  Align(
                    alignment: Alignment.bottomCenter,
                      child: designButton(AppLocalizations.of(context)!.viewMore ,false,MediaQuery.of(context).size.width-4.w,provider.isArabic,(){
                        print("2");
                      })),
                ],


              ),



            ),
          );
        }
      );
      });
  }
}
