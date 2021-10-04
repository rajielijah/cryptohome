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
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:15.0, top: 15, bottom: 10),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                         decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      const Color(0xFF87D3DD),
                                      const Color(0xFF87D3DD)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    stops: [0.0, 0.1],
                                  ),
                                ),
                            height: MediaQuery.of(context).size.height / 4.5,
                                width: MediaQuery.of(context).size.width,
                        child:     Align(
                          alignment: Alignment.center,
                          child: ListTile(
                            title: Text('Bank Details', style: TextStyle(fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600, fontSize: 25),),
                            subtitle: Text('Select your preferred bank', style: TextStyle(color: Colors.white, letterSpacing: 0.7, fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,),),
                            trailing:   GestureDetector(
                            onTap: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddBank()));
                            },
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => AddBank()));
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
                      ),
                    ),
                    // Positioned(
                    //         left: 90,
                    //         top: 10,
                    //         child:
                    //             SvgPicture.asset('assets/images/vector9.svg')),
                        Positioned(
                            left: 30,
                            top: 40,
                            child:
                                SvgPicture.asset('assets/images/vector9.svg')),
                        Positioned(
                            right: 30,
                            top: 10,
                            child:
                                SvgPicture.asset('assets/images/vector9.svg')),
                        // Positioned(
                        //     right: 60,
                        //     bottom: 50,
                        //     child:
                        //         SvgPicture.asset('assets/images/vector9.svg')),
                        Positioned(
                            left: 40,
                            bottom: 10,
                            child:
                                SvgPicture.asset('assets/images/vector9.svg'))
                  ],
                ),
                // SizedBox(height: 10,),
                Container(
                  height: height/7,
                  decoration: BoxDecoration(
                    color: kPColor,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ListTile(
                      title: Text('Zenith Bank', style: TextStyle(fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,),),
                      subtitle: Text('5555 7777 8888 9999 0890', style: TextStyle(color: Colors.grey, fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,)),
                      trailing: Text('Visa',style: TextStyle(color: Colors.blue,fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,),
                    ),
                ),
                  ),
                ),
                 Container(
                   height: height/7,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(8)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(18.0),
                     child: ListTile(
                       title: Text('First Bank', style: TextStyle(fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,),),
                       subtitle: Text('5555 7777 8888 9999 0890', style: TextStyle(color: Colors.grey,fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,)),
                       trailing: Text('Visa',style: TextStyle(color: Colors.blue,fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,),
                     ),
                 ),
                   ),
                ),
               Container(
                  height: height/7,
                  decoration: BoxDecoration(
                    color: kPColor,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ListTile(
                      title: Text('Zenith Bank', style: TextStyle(fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,),),
                      subtitle: Text('5555 7777 8888 9999 0890', style: TextStyle(color: Colors.grey, fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,)),
                      trailing: Text('Mastercard',style: TextStyle(color: Colors.blue, fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,),
                    ),
                ),
                  ),
                ),
                 Container(
                   height: height/7,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(8)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(18.0),
                     child: ListTile(
                       title: Text('First Bank', style: TextStyle(fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,),),
                       subtitle: Text('5555 7777 8888 9999 0890', style: TextStyle(color: Colors.grey, fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,)),
                       trailing: Text('Visa',style: TextStyle(color: Colors.blue, fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,),
                     ),
                 ),
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