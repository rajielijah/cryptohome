import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/views/authentication/login.dart';
import 'package:cryptohome/views/nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

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
                padding: const EdgeInsets.only(left:18.0, right:18),
                child: Text(
                  "Sign up to start",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      letterSpacing: 0.8,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:18.0, right:18),
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
                SizedBox(height: height/4,),
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
                  // inputBorder: OutlineInputBorder( ),
                  // inputDecoration: InputDecoration(fillColor: Colors.white),
                  textStyle: TextStyle(color: Colors.white),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
              SizedBox(height: height/7,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 60,
                    decoration: BoxDecoration(
                      color: kPrimaryColor[10],
                      borderRadius: BorderRadius.circular(30)
                    ),
                      child: GestureDetector(
                        onTap: (){
                          showModalBottomSheet(
                            context: context, 
                            builder: (context){
                            return FractionallySizedBox();
                          });
                        },
                        child: Icon(Icons.arrow_forward)),
                  ),
                  SizedBox(width: 30,),
                   Container(
                width: 130,
                height: 60,
                decoration: BoxDecoration(
                  // color: kPrimaryColor[10],
                   border: Border.all(color: kPColor),
                  borderRadius: BorderRadius.circular(30)
                ),
                  child:  Image.asset('assets/images/search.png', height: height/10,),
              ),
                ],
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

            ],
          ),
        ),
      )),
    );
  }
}
