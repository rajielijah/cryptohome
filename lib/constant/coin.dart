
import 'package:cryptohome/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


Widget coin(BuildContext context, Widget image, Text title, Text subtitle, Widget chart, Widget price, Widget percent){
   var height = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.only(left:0, right: 0, bottom: 10),
    child: GestureDetector(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CoinPage()));
      },
      child: Container(
        height: height/9,
        width: width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: kPColor[10] ),
        padding: EdgeInsets.all(10),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            image,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title, 
                subtitle
              ],
            ),
            chart,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                price,
                percent
              ],
            )
          ],
        )
      ),
    ),
  );
}