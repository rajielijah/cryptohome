import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/constant/validator.dart';
import 'package:cryptohome/views/authentication/sign_up.dart';
import 'package:cryptohome/views/nav.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = true;
  @override
  void initState(){
    super.initState();
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    final EmailField = TextFormField(
        autofocus: false,
        maxLines: 1,
        // validator: validateEmail,
        // onSaved: (value) => _email = value,
        minLines: 1,
         style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: 'Email',
          labelStyle: TextStyle(color: Colors.white),
          contentPadding:
              new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
          errorBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white)),
          // focusedBorder: OutlineInputBorder(),
        ));
    final passwordField = TextFormField(
        autofocus: false,
        obscureText: _passwordVisible,
         style: TextStyle(color: Colors.white),
        // onSaved: (value) => _password = value,
        validator: (value) => value!.isEmpty ? "Please enter password" : null,
        maxLines: 1,
        minLines: 1,
        decoration: InputDecoration(
            fillColor: Colors.white,
            // hintStyle: TextStyle(color:Colors.white),
            labelText: 'Password',
             suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).primaryColorDark,
          ),
        ),
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white54)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white54))));
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 58.0),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Welcome back",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    letterSpacing: 0.9,
                    color: Colors.white),
              ),
              SizedBox(
                height: height / 5,
              ),
              EmailField,
              SizedBox(
                height: 15,
              ),
              passwordField,
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                 
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      child: Text(
                        'Sign up',
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
                                builder: (BuildContext context) => SignUp()));
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: width/4
                  ),
                  Text('Forgot password?',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          // decoration: TextDecoration.underline,
                          fontSize: 17,
                          fontWeight: FontWeight.w300))
                ],
              ),
              SizedBox(
                height: height / 7,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white)),
                  SizedBox(
                    width: width / 5,
                  ),
                  GestureDetector(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyStatefulWidget()));
                    },
                    child: Container(
                      width: 160,
                      height: 55,
                      decoration: BoxDecoration(
                          color: kPrimaryColor[10],
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(Icons.arrow_forward, color: kPrimaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
