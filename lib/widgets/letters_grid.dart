import 'package:careerworld/consts/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget letterGrid(List letters,h,w){
  return Expanded(
    child: GridView.builder(
      itemCount: letters.length,

        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
    crossAxisSpacing:10,
    mainAxisSpacing: 10,
    childAspectRatio: (1.5 / 1),
    ),
    itemBuilder: (context,index,) {
      return Padding(
        
        padding: const EdgeInsets.all(12),
        child: Container(
          height:h ,
          width: w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
                color: Colors.white,
            boxShadow: [ BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            )],



          ),
child: Center(child: Text(letters[index],style: TextStyle(color: colorsList[index],fontSize: 40),)),
        ),
      );
    }),
  );


}
