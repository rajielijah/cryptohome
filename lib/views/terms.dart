
import 'package:cryptohome/constant/color.dart';
import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Container(
        color: kPrimaryColor,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                 GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios, color:Colors.white)),
                  SizedBox(
                    width: width/4,
                  ),
                Text('Terms and Conditions', style: TextStyle(fontSize: 14, color: kPColor[10], fontWeight: FontWeight.w200, fontFamily: "Montserrat"),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text('Welcome to ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                        Text('CryptoHome', style: TextStyle(color: kPrimaryColor, fontSize: 18, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(height: 40,),
                    Text('''CryptoHome secures all your transaction and this guarantees that all your Bitcoin transaction is based on a safe end-to-end dealings  Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, assumenda possimus quasi vero voluptates aliquid corporis velit architecto id? Harum, soluta beatae omnis esse facere vel molestias porro impedit ea.

Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, assumenda possimus quasi vero voluptates aliquid corporis velit architecto id? Harum, soluta beatae omnis esse facere vel molestias porro impedit ea.

Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, assumenda possimus quasi vero voluptates aliquid corporis velit architecto id? Harum, soluta beatae omnis esse facere vel molestias porro impedit ea. with the CryptoHome team '''),
                   SizedBox(height: 70,),
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