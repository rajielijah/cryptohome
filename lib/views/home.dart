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
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF87D3DD),
                                const Color(0xFF87D3DD)
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              // stops: [0.0, 0.1],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 4.2,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Welcome Ben',
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        letterSpacing: 0.7),
                                  ),
                                  Text(
                                    'BTC Value',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: kPrimaryColor),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            color: kPrimaryColor, fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 14,),
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
                                              style: TextStyle(color: kPrimaryColor,
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
                                              style: TextStyle(color: kPrimaryColor,
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
                              )),
                        ),
                        //  Positioned(
                        // bottom: 20,
                        // left: 10,
                        // child: Image.asset('images/l.png')),
                        Positioned(
                            left: 30,
                            top: 40,
                            child:
                                SvgPicture.asset('assets/images/vector9.svg')),
                        Positioned(
                            right: 60,
                            bottom: 50,
                            child:
                                SvgPicture.asset('assets/images/vector9.svg')),
                        Positioned(
                            right: 90,
                            top: 50,
                            child:
                                SvgPicture.asset('assets/images/vector9.svg'))
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 18.0, left: 18),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: kPrimaryColor,
                  //       borderRadius: BorderRadius.circular(10)
                  //     ),
                  //     child: ListTile(
                  //       leading: Image.asset('assets/images/me.png'),
                  //       title:  Row(
                  //             children: [
                  //               Text(
                  //                 'Bticoin ',
                  //                 style: TextStyle(
                  //                     fontFamily: 'Montserrat',
                  //                     fontSize: 18,
                  //                     fontWeight: FontWeight.w300,
                  //                     color: Colors.white),
                  //               ),
                  //               Text(
                  //                 '(BTC)',
                  //                 style: TextStyle(
                  //                     fontFamily: 'Montserrat',
                  //                     fontSize: 12,
                  //                     fontWeight: FontWeight.w300,
                  //                     color: Colors.white),
                  //               ),
                  //             ],
                  //           ),
                  //       trailing: Icon(Icons.arrow_drop_down, color:Colors.white),
                  //       focusColor: kPrimaryColor,
                  //       tileColor: kPrimaryColor,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(14.0),
                  //   child: Row(
                  //     // crossAxisAlignment: CrossAxisAlignment.end,
                  //     children: [
                  //       Text(
                  //         '\$98,609.74  ',
                  //         style: TextStyle(
                  //             fontSize: 27, fontWeight: FontWeight.bold),
                  //       ),
                  //       Text(
                  //         '+1700.254  (9.77%)',
                  //         style: TextStyle(
                  //             color: Colors.green[300],
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.bold),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // SvgPicture.asset('assets/images/charts.svg'),
                  // SizedBox(
                  //   height: height / 25,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(18.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     children: [
                  //       Container(
                  //         width: width / 8,
                  //         height: height / 20,
                  //         decoration: BoxDecoration(
                  //             color: kPrimaryColor,
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(color: kPrimaryColor)),
                  //         child: Center(
                  //             child: Text(
                  //           '1 H',
                  //           style: TextStyle(color: Colors.white),
                  //         )),
                  //       ),
                  //       Container(
                  //         width: width / 8,
                  //         height: height / 20,
                  //         decoration: BoxDecoration(
                  //             color: Colors.grey[200],
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(color: Colors.grey)),
                  //         child: Center(child: Text('24 H')),
                  //       ),
                  //       Container(
                  //         width: width / 8,
                  //         height: height / 20,
                  //         decoration: BoxDecoration(
                  //             color: Colors.grey[200],
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(color: Colors.grey)),
                  //         child: Center(child: Text('1 W')),
                  //       ),
                  //       Container(
                  //         width: width / 8,
                  //         height: height / 20,
                  //         decoration: BoxDecoration(
                  //             color: Colors.grey[200],
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(color: Colors.grey)),
                  //         child: Center(child: Text('1 M')),
                  //       ),
                  //       Container(
                  //         width: width / 8,
                  //         height: height / 20,
                  //         decoration: BoxDecoration(
                  //             color: Colors.grey[200],
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(color: Colors.grey)),
                  //         child: Center(child: Text('6 M')),
                  //       ),
                  //       Container(
                  //         width: width / 8,
                  //         height: height / 20,
                  //         decoration: BoxDecoration(
                  //             color: Colors.grey[200],
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(color: Colors.grey)),
                  //         child: Center(child: Text('1 Y')),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left:18.0, right:18, top:18),
                    child: Container(
                      height: 40,
                      width: width,
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(12),
                         color: kPColor[10]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('TOP COINS', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Montserrat') ,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: width,
                          color: kPrimaryColor,
                          child: ListTile(
                            leading: Image.asset('assets/images/me.png'),
                            title: Row(
                              children: [
                                Text(
                                  'Bticoin ',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                Text(
                                  'BTC',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              '5,204',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            trailing: Text(
                              '+9.77%',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.green),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 75,
                          width: width,
                          color: kPrimaryColor,
                          child: ListTile(
                            leading: SvgPicture.asset('assets/images/ETH.svg'),
                            title: Row(
                              children: [
                                Text(
                                  'Ethereum ',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                Text(
                                  'ETH',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              '5,204',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            trailing: Text(
                              '-19.77%',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.red),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 75,
                          width: width,
                          color: kPrimaryColor,
                          child: ListTile(
                            leading: SvgPicture.asset('assets/images/USDT.svg'),
                            title: Row(
                              children: [
                                Text(
                                  'Tether ',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                Text(
                                  'USDT',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              '5,204',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            trailing: Text(
                              '+9.77%',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.green),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 75,
                          width: width,
                          color: kPrimaryColor,
                          child: ListTile(
                            leading: SvgPicture.asset('assets/images/bnb.svg'),
                            title: Row(
                              children: [
                                Text(
                                  'Binance ',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                Text(
                                  'BNB',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              '5,204',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            trailing: Text(
                              '-12.29%',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
