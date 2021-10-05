import 'package:cryptohome/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: height,
              color: kPrimaryColor,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                      children: [
                      SizedBox(height: 40,),
                        Center(
                          child: Text(
                            'BTC Value',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: kPColor[10]),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$2,509.75',
                              style: TextStyle(
                                  color: Colors.white,
                              fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                                  letterSpacing: 0.7,
                                  fontSize: 26),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '+9.77%',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                                  color: Colors.green, fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Available Bal.',
                                    style: TextStyle(color: kPColor[10],
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                ),
                                 Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                '\$1320',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            )
                              ],
                            ),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    'Bonus Bal.',
                                    style: TextStyle(color: Colors.amber,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                 Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                '\$320',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            )
                              ],
                            ),
                          ],
                        ),
                       
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                       height:160,
                       width: 160,
                       color:kPrimaryColor.withGreen(5),
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(18.0),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                  Image.asset('assets/images/me.png', height: 25,),
                                  SizedBox(width: 20,),
                                  Text("Bitcoin",style: TextStyle(color: Colors.white54, fontFamily:"Montserrat"),)
                               ],
                             ),
                           ),
                          //  SizedBox(height: 10,),
                           Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Buy Rate: ',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat", fontSize: 12),
                            ),
                            Text(
                              ' 530',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat",
                                  fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(height: 7,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sell rate: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontFamily: 'Montserrat', fontSize: 12, color: Colors.white54),
                            ),
                            Text(
                              ' 530',
                              style: TextStyle(
                                  color: Colors.red[500],
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat",
                                  fontSize:12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset('assets/images/vector9.svg')
                         ],
                       ),
                     ),
                     Container(
                       height:160,
                       width: 160,
                       color:kPrimaryColor.withGreen(5),
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(18.0),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 SvgPicture.asset('assets/images/eth.svg'),
                                  SizedBox(width: 20,),
                                  Text("Ethereum",style: TextStyle(color: Colors.white54, fontFamily:"Montserrat"),)
                               ],
                             ),
                           ),
                          //  SizedBox(height: 10,),
                           Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Buy Rate: ',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat", fontSize:12),
                            ),
                            Text(
                              ' 530',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat",
                                  fontSize:12),
                            )
                          ],
                        ),
                        SizedBox(height: 7,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sell rate: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontFamily: 'Montserrat', fontSize:12, color: Colors.white54),
                            ),
                            Text(
                              ' 530',
                              style: TextStyle(
                                  color: Colors.red[500],
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat",
                                  fontSize:12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset('assets/images/vector9.svg')
                         ],
                       ),
                     ),
                   ],
                 ),
                 SizedBox(
                   height: 20 ,
                 ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                       height:160,
                       width: 160,
                       color:kPrimaryColor.withGreen(5),
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(18.0),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                  Image.asset('assets/images/btc.png', height: 25,),
                                  SizedBox(width: 20,),
                                  Text("Binance",style: TextStyle(color: Colors.white54, fontFamily:"Montserrat"),)
                               ],
                             ),
                           ),
                          //  SizedBox(height: 10,),
                           Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Buy Rate: ',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat", fontSize:12),
                            ),
                            Text(
                              ' 530',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat",
                                  fontSize:12),
                            )
                          ],
                        ),
                        SizedBox(height: 7,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sell rate: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontFamily: 'Montserrat', fontSize:12, color: Colors.white54),
                            ),
                            Text(
                              ' 530',
                              style: TextStyle(
                                  color: Colors.red[500],
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat",
                                  fontSize:12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset('assets/images/vector9.svg')
                         ],
                       ),
                     ),
                     Container(
                       height:160,
                       width: 160,
                       color:kPrimaryColor.withGreen(5),
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(18.0),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 SvgPicture.asset('assets/images/usdt.svg'),
                                  SizedBox(width: 20,),
                                  Text("Tether",style: TextStyle(color: Colors.white54, fontFamily:"Montserrat"),)
                               ],
                             ),
                           ),
                          //  SizedBox(height: 10,),
                           Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Buy Rate: ',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat", fontSize:12),
                            ),
                            Text(
                              ' 530',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat",
                                  fontSize:12),
                            )
                          ],
                        ),
                        SizedBox(height: 7,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sell rate: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontFamily: 'Montserrat', fontSize:12, color: Colors.white54),
                            ),
                            Text(
                              ' 530',
                              style: TextStyle(
                                  color: Colors.red[500],
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat",
                                  fontSize:12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset('assets/images/vector9.svg')
                         ],
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                                color: kPrimaryColor[10],
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/arrow-eight.svg'),
                                Text('Buy', style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w300),)
                              ],
                            )
                          ),
                       Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                                color: textColor[10],
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/arrow-left.svg'),
                                Text('Sell', style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w300),)
                              ],
                            )
                          ),
                  ],
                ),
              ),
                ],
              ),
              
              ),
        ),
      ),
    );
  }
}
