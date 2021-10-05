import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/constant/validator.dart';
import 'package:cryptohome/views/authentication/sign_up.dart';
import 'package:cryptohome/views/createPassword.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

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
          floatingLabelBehavior: FloatingLabelBehavior.auto,
           border: UnderlineInputBorder(  ),
           labelStyle: TextStyle(color:Colors.white, fontFamily: "Montserrat", fontWeight: FontWeight.w100),
          contentPadding:
              new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
         enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(color:Colors.white54)
         ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.white54)
          ),
        ));
       final firstNameField = TextFormField(
        autofocus: false,
        maxLines: 1,
         style: TextStyle(color: Colors.white),
        // validator: validateEmail,
        // onSaved: (value) => _email = value,
        minLines: 1,
        decoration: InputDecoration(
          labelText: 'First name',
           labelStyle: TextStyle(color:Colors.white, fontFamily: "Montserrat", fontWeight: FontWeight.w200),
          contentPadding:
              new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
        enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(color:Colors.white54)
         ),
      
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.white54)
          ),
          // focusedBorder: OutlineInputBorder(),
        ));
       final lastNameField = TextFormField(
        autofocus: false,
        maxLines: 1,
         style: TextStyle(color: Colors.white),
        // validator: validateEmail,
        // onSaved: (value) => _email = value,
        minLines: 1,
        decoration: InputDecoration(
          labelText: 'Last name',
           labelStyle: TextStyle(color:Colors.white, fontFamily: "Montserrat", fontWeight: FontWeight.normal),
          contentPadding:
              new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
        enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(color:Colors.white54)
         ),
      
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.white54)
          ), ));
    
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
                  'Kindly fill in your details',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 0.9,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height:15),
              Text(
                "Let's intoduce you",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    letterSpacing: 0.9,
                    color: Colors.white),
              ),
              SizedBox(height: height/5,),
              EmailField,
              SizedBox(height: 20,),
              firstNameField,
              SizedBox(height: 20,),
              lastNameField,
                SizedBox(height: height/7,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color:Colors.white)),
                    SizedBox(width:width/5,),
                    GestureDetector(
                         onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePassword()));
                          },
                      
                      child: Container(
                        width: 160,
                        height: 55,
                        decoration: BoxDecoration(
                          color: kPrimaryColor[10],
                          borderRadius: BorderRadius.circular(30)
                        ),
                          child: Icon(Icons.arrow_forward, color:kPrimaryColor),
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
