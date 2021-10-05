import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/views/authentication/details.dart';
import 'package:cryptohome/views/authentication/login.dart';
import 'package:cryptohome/views/nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Form(
        key: formKey,
        child: Container(
          color: kPrimaryColor,
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/logoc2.png'),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Text(
                  "Enter your phone number",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      letterSpacing: 0.8,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Text(
                  "Let's meet you",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      letterSpacing: 0.8,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: height / 4,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.DROPDOWN,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.white),
                  initialValue: number,
                  textFieldController: controller,
                  formatInput: false,
                  errorMessage: 'Invalid Phone number',
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                 inputDecoration: InputDecoration(
                   enabledBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.white54)
                 ),
                   focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.white54)
                 )),
                  inputBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white) ),
                  textStyle: TextStyle(color: Colors.white),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
              SizedBox(
                height: height / 7,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                       onTap: () {
                          showModalBottomSheet(
                              context: context,
                              elevation: 20,
                              builder: (context) {
                                return Container(
                                     margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
                                          alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  height: 191,
                                  width: width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        OTPTextField(
                                          length: 4,
                                          width: width / 1.09,
                                          textFieldAlignment:
                                              MainAxisAlignment.spaceAround,
                                          fieldWidth: 64,

                                          // margin: EdgeInsets.symmetric(horizontal:10, vertical:10),
                                          fieldStyle: FieldStyle.underline,
                                          outlineBorderRadius: 17,

                                          otpFieldStyle: OtpFieldStyle(
                                              backgroundColor: kPColor,
                                              borderColor: kPrimaryColor,
                                              focusBorderColor: kPColor),

                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(height: 15,),
                                        Text(
                                            'Please enter the 4 digit code that was sent to you'),
                                        SizedBox(height: 20),
                                        GestureDetector(
                                           onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            DetailsScreen()));
                                              },
                                          child: Container(
                                            width: 170,
                                            height: 60,
                                            decoration: BoxDecoration(
                                                color: kPrimaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Icon(Icons.arrow_forward, color:Colors.white),
                                          ),
                                        )
                                      ]),
                                );
                              });
                        },
                    child: Container(
                      width: 160,
                      height: 55,
                      decoration: BoxDecoration(
                          color: kPrimaryColor[10],
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(Icons.arrow_forward, ),
                    ),
                  ),
                 
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
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
                                        LoginScreen()));
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
