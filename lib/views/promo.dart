import 'package:cryptohome/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Promo extends StatelessWidget {
  // const Security({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Container(
        color: kPrimaryColor,
        width: width,
        child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                  SizedBox(
                    width: width/4,
                  ),
                Text('Promo', style: TextStyle(fontSize: 19, fontFamily: "Montserrat", color: kPColor[10], fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: height/1.5,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/images/promo.svg'),
                    SizedBox(height:height/10,),
                    Text('GET FREE COINS', style: TextStyle(color: kPColor[10], fontWeight: FontWeight.w700, fontFamily: 'Montserrat', fontSize: 16),),
                    SizedBox(height:10,),
                    Text('Enjoy free Coins on every trade', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Montserrat', fontSize: 16)),
                   SizedBox(height: height/17,),
                    Text('Get free coins for every successful \n                transaction you do', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Montserrat', fontSize: 16))
                  ],
                ),
              ),
            ),
          )
        ],
      ),),),
    );
  }
}