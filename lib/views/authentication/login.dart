import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/constant/validator.dart';
import 'package:cryptohome/views/authentication/sign_up.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
           labelStyle: TextStyle(color:Colors.white),
          contentPadding:
              new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
         enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(color:Colors.white)
         ),
          errorBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(),
        ));
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
        labelText: 'Password',
        labelStyle: TextStyle(color:Colors.white),
        errorBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.white)),
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
                  'Sign in',
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
                "Welcome back",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    letterSpacing: 0.9,
                    color: Colors.white),
              ),
              SizedBox(height: height/5,),
              EmailField,
              passwordField,
              SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'No account yet?',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
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
                                  builder: (BuildContext context) =>
                                      SignUp()));
                        }),
                        Text('Forgot password?', 
                         style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              // decoration: TextDecoration.underline,
                              fontSize: 17,
                              fontWeight: FontWeight.w300))
                  ],
                ),
                SizedBox(height: height/7,),
                Row(
                  children: [
                    Icon(Icons.arrow_back, color:Colors.white),
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
                            showModalBottomSheet(
                              context: context, 
                              builder: (context){
                              return FractionallySizedBox();
                            });
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
