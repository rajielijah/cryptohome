import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/views/addBank.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankDetails extends StatelessWidget {
  // const BankDetails({ Key? key }) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: height,
            color: kPrimaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 15, bottom: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:
                              Icon(Icons.arrow_back_ios, color: Colors.white)),
                      SizedBox(width: width / 4),
                      Text(
                        'Bank Details',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: kPColor[10],
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddBank()));
                            },
                            child: Container(
                              height: height / 17,
                              width: width / 4,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(19)),
                              child: Center(
                                  child: Text(
                                'Add bank',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    color: kPColor[10]),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: height / 7,
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withGreen(5),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListTile(
                        title: Text(
                          'Zenith Bank',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white54,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text('5555 7777 8888 9999 0890',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            )),
                        trailing: Text(
                          'Visa',
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0, right: 18),
                  child: Container(
                    height: height / 7,
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withGreen(5),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListTile(
                        title: Text(
                          'First Bank',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white54,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text('5555 7777 8888 9999 0890',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            )),
                        trailing: Text(
                          'Visa',
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: height / 7,
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withGreen(5),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListTile(
                        title: Text(
                          'Zenith Bank',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            color: Colors.white54
                          ),
                        ),
                        subtitle: Text('5555 7777 8888 9999 0890',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            )),
                        trailing: Text(
                          'Mastercard',
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //  Container(
                //      height: height/7,
                //      decoration: BoxDecoration(
                //        color: Colors.white,
                //        borderRadius: BorderRadius.circular(8)
                //      ),
                //      child: Padding(
                //        padding: const EdgeInsets.all(18.0),
                //        child: ListTile(
                //          title: Text('First Bank', style: TextStyle(fontFamily: 'Montserrat',
                //                                 fontWeight: FontWeight.w400,),),
                //          subtitle: Text('5555 7777 8888 9999 0890', style: TextStyle(color: Colors.grey, fontFamily: 'Montserrat',
                //                                 fontWeight: FontWeight.w400,)),
                //          trailing: Text('Visa',style: TextStyle(color: Colors.blue, fontFamily: 'Montserrat',
                //                                 fontWeight: FontWeight.w400,),
                //        ),
                //    ),
                //      ),
                //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
