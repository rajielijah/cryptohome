import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/constant/validator.dart';
import 'package:cryptohome/views/authentication/login.dart';
import 'package:cryptohome/views/authentication/sign_up.dart';
import 'package:flutter/material.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      
      // onSaved: (value) => _password = value,
      validator: (value) => value!.isEmpty ? "Please enter password" : null,
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        fillColor: Colors.white,
        // hintStyle: TextStyle(color:Colors.white),
        labelText: 'Enter Password',
        labelStyle: TextStyle(color:Colors.grey[400]),
         enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(color:Colors.white)
         ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.white)
          ),
       ),
    );
    final repeatPasswordField = TextFormField(
      autofocus: false,
      obscureText: true,
      
      // onSaved: (value) => _password = value,
      validator: (value) => value!.isEmpty ? "Please enter password" : null,
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        fillColor: Colors.white,
        // hintStyle: TextStyle(color:Colors.white),
        labelText: 'Repeat Password',
        labelStyle: TextStyle(color:Colors.grey[400]),
         enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(color:Colors.white)
         ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.white)
          ),
       ),
    );
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
                padding: const EdgeInsets.only(top:58.0),
                child: Text(
                  'Create your password',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 0.9,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height:15),
              Text(
                "Kindly create your password",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    letterSpacing: 0.7,
                    color: Colors.white54),
              ),
              SizedBox(height: height/5,),
              passwordField,
              SizedBox(height: 15,),
              repeatPasswordField,
                SizedBox(height: height/5,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color:Colors.white)),
                    SizedBox(width:width/5,),
                    Container(
                      width: 160,
                      height: 55,
                      decoration: BoxDecoration(
                        color: kPrimaryColor[10],
                        borderRadius: BorderRadius.circular(30)
                      ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                          },
                          child: Icon(Icons.arrow_forward, color:kPrimaryColor)),
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
