import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/views/authentication/login.dart';
import 'package:cryptohome/views/authentication/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: kPrimaryColor,
          width: width,
          height: height,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: SvgPicture.asset('assets/images/on.svg')),
                SizedBox(
                  height: height / 9,
                ),
                Text(
                  'Buy & Sell your crypto safely',
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We help you receive and purchase your \nvariety of cryptocurrencies',
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.white54),
                ),
                SizedBox(
                  height: height / 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: FlatButton(
                      minWidth: width,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => SignUp()));
                      },
                      child: Text('Sign up',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      color: kPColor[10],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Have an Account?',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: kPColor[10],
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline,
                              fontSize: 17,
                              fontWeight: FontWeight.w300),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LoginScreen()));
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
