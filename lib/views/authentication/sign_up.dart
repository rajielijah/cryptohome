import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/views/nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: kPrimaryColor,
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/logoc2.png'),
            Text(
              "Sign up to start",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Text(
              "Let's meet you",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Colors.white),
            ),
            IntlPhoneField(
              countryCodeTextColor: Colors.white,
    decoration: InputDecoration(
      fillColor: Colors.white,
        labelText: 'Phone Number',
        focusColor: Colors.white,
        hoverColor: Colors.white,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
        ),
    ),
    initialCountryCode: 'IN',
    showCountryFlag: false,
    onChanged: (phone) {
        print(phone.completeNumber);
    },
),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Have an Account?',
                    style: TextStyle(
                        color: Colors.grey[50],
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.white,
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
                                MyStatefulWidget()));
                      })
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
