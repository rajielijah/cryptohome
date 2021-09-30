import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/constant/validator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EmailField = TextFormField(
      autofocus: false,
      maxLines: 1,
      // validator: validateEmail,
      // onSaved: (value) => _email = value,
      minLines: 1,
      decoration: InputDecoration(
        labelText: 'Email',
        contentPadding: new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
        errorBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
      
      ),
    ));
    final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      
      // onSaved: (value) => _password = value,
      validator: (value) => value!.isEmpty ? "Please enter password" : null,
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        labelText: 'Password',
        errorBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.black)),
     
      ),
    );
      var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: kPrimaryColor,
          ),
          child: Column(
            children: [
              Text('Kidnly fill in your details', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, fontWeight: FontWeight.w600,),),
               Text(
              "Let's introduce you",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Colors.white),
            ),
            EmailField,
            passwordField
            
            ],
          ),
        )),
    );
  }
}