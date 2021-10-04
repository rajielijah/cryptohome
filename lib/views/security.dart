import 'package:cryptohome/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Security extends StatelessWidget {
  // const Security({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Container(
        color: kPrimaryColor,
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
                  child: Icon(Icons.arrow_back_ios, color:Colors.white)),
                  SizedBox(width: width/4,),
                Text('Security', style: TextStyle(fontSize: 19, fontFamily: "Montserrat",  color: kPColor[10], fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: height/1.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/images/security.svg'),
                    SizedBox(height:height/7,),
                    Text('''CryptoHome secures all your transaction and this \nguarantees that all your Bitcoin transaction is based on a safe end-to-end dealings  with the CryptoHome team'''),
                   SizedBox(height: height/10,),
                    Text('You will be notified if there is an update')
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