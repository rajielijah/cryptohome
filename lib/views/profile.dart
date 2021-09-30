import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/constant/profile.dart';
import 'package:cryptohome/views/authentication/sign_up.dart';
import 'package:cryptohome/views/bank_detaiils.dart';
import 'package:cryptohome/views/promo.dart';
import 'package:cryptohome/views/security.dart';
import 'package:cryptohome/views/terms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          // color: kPrimaryColor,
          width: width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
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
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  child: SvgPicture.asset(
                                      'assets/images/profile.svg'),
                                  radius: 40,
                                ),
                                Positioned(
                                    //  top: 22,
                                    child: SvgPicture.asset(
                                        'assets/images/vector4.svg'))
                              ],
                            ),
                            Text(
                              'Ben Tom',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            Text(
                              'Bentom@gmail.com',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '+2341 9977118',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              profile(
                  context,
                  SvgPicture.asset('assets/images/profile1.svg'),
                  Text(
                    'Profile details',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  ),
                  Icon(Icons.arrow_forward_ios_sharp)),
              GestureDetector(
                onTap:(){
                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => BankDetails()));
                },
                child: profile(
                    context,
                    SvgPicture.asset('assets/images/profile2.svg'),
                    Text(
                      'Bank details',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp)),
              ),
              // profile(
              //     context,
              //     SvgPicture.asset('assets/images/profile3.svg'),
              //     Text(
              //       'Notifications',
              //       style: TextStyle(
              //           fontSize: 19,
              //           fontWeight: FontWeight.w500,
              //           color: textColor),
              //     ),
              //     Icon(Icons.arrow_forward_ios_sharp)),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Security()));
                  },
                  child: profile(
                      context,
                      SvgPicture.asset('assets/images/profile5.svg'),
                      Text(
                        'Security',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: textColor),
                      ),
                      Icon(Icons.arrow_forward_ios_sharp))),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Promo()));
                },
                child: profile(
                    context,
                    SvgPicture.asset('assets/images/profile4.svg'),
                    Text(
                      'Promo',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp)),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Terms()));
                },
                child: profile(
                    context,
                    SvgPicture.asset('assets/images/profile6.svg'),
                    Text(
                      'Terms and Conditions',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: ListTile(
                      leading: SvgPicture.asset('assets/images/profile7.svg'),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      )),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget logoutButton = FlatButton(
      minWidth: 140,
      height: 60,
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: BorderSide(color: kPrimaryColor)),
      child: Text(
        "LOGOUT",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => SignUp()));
      },
    );
    Widget cancelButton = FlatButton(
      minWidth: 140,
      height: 60,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(40)),
      child: Text(
        "CANCEL",
        style: TextStyle(color: kPrimaryColor),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      // buttonPadding: EdgeInsets.all(20),
      title: Text(
        "Confirm you want to log out",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Text(
        "Are you sure you want to sign out of your account",
        style: TextStyle(fontSize: 11),
      ),
      actions: [
        logoutButton,
        cancelButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
