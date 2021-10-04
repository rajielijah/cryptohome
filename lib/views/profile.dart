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
          color: kPrimaryColor,
          width: width,
          height: height,
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: SvgPicture.asset('assets/images/profile.svg'),
                          radius: 40,
                        ),
                        SizedBox(width: width/7,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bentom@gmail.com',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat'),
                            ),
                            Text(
                              '+2341 9977118',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Ben Tom',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
              profile(
                  context,
                  SvgPicture.asset('assets/images/pro6.svg'),
                  Text(
                    'Profile details',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Icon(Icons.arrow_forward_ios_sharp, color: Colors.white)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BankDetails()));
                },
                child: profile(
                    context,
                    SvgPicture.asset('assets/images/pro4.svg'),
                    Text(
                      'Bank details',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp, color: Colors.white)),
              ),
              // profile(
              //     context,
              //     SvgPicture.asset('assets/images/pro3.svg'),
              //     Text(
              //       'Notifications',
              //       style: TextStyle(
              //           fontSize: 15,
              //           fontWeight: FontWeight.w500,
              //           color: Colors.white),
              //     ),
              //     Icon(Icons.arrow_forward_ios_sharp, color: Colors.white)),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Security()));
                  },
                  child: profile(
                      context,
                      SvgPicture.asset('assets/images/pro1.svg'),
                      Text(
                        'Security',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Icon(Icons.arrow_forward_ios_sharp, color: Colors.white))),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Promo()));
                },
                child: profile(
                    context,
                    SvgPicture.asset('assets/images/pro3.svg'),
                    Text(
                      'Promo',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp, color: Colors.white)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Terms()));
                },
                child: profile(
                    context,
                    SvgPicture.asset('assets/images/pro2.svg'),
                    Text(
                      'Terms and Conditions',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp, color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: ListTile(
                      leading: SvgPicture.asset('assets/images/pro7.svg'),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: 15, fontWeight: FontWeight.w500),
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
