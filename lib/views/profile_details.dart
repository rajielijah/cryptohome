import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/views/nav.dart';
import 'package:flutter/material.dart';


class ProfileDetails extends StatelessWidget {
  const ProfileDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final fullNameField = TextFormField(
        autofocus: false,
        maxLines: 1,
         style: TextStyle(color: Colors.white),
        // validator: validateEmail,
        // onSaved: (value) => _email = value,
        minLines: 1,
        decoration: InputDecoration(
          labelText: 'Full name',
           labelStyle: TextStyle(color:Colors.white),
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
      final genderField = TextFormField(
        autofocus: false,
        maxLines: 1,
         style: TextStyle(color: Colors.white),
        // validator: validateEmail,
        // onSaved: (value) => _email = value,
        minLines: 1,
        decoration: InputDecoration(
          labelText: 'Gender',
           labelStyle: TextStyle(color:Colors.white),
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
      final countryField = TextFormField(
        autofocus: false,
        maxLines: 1,
         style: TextStyle(color: Colors.white),
        // validator: validateEmail,
        // onSaved: (value) => _email = value,
        minLines: 1,
        decoration: InputDecoration(
          labelText: 'Country',
           labelStyle: TextStyle(color:Colors.white),
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
        final addressField = TextFormField(
        autofocus: false,
        maxLines: 1,
         style: TextStyle(color: Colors.white),
        // validator: validateEmail,
        // onSaved: (value) => _email = value,
        minLines: 1,
        decoration: InputDecoration(
          labelText: 'Address',
           labelStyle: TextStyle(color:Colors.white),
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
           labelStyle: TextStyle(color:Colors.white),
          contentPadding:
              new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
         enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(color:Colors.white54)
         ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.white54)
          ),
        ));
    return Scaffold(
      body: SafeArea(child: 
      Container(
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new, color:Colors.white)
                  ),
                  SizedBox(width: 10,),
                  Text("Profile Details", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w300, color:Colors.white ),)
                ],
              ),
              SizedBox(height: 30,),
              EmailField,
              SizedBox(height: 20,),
              fullNameField,
              SizedBox(height: 20,),
              genderField,
              SizedBox(height: 20,),
              countryField,
              SizedBox(height: 20,),
              addressField,
              SizedBox(height: height/8),
               Container(
                    width: width,
                    height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Container(
                                  child:   FlatButton(minWidth: width, height: 40, 
                           shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(30)
                                 ),
                          onPressed: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyStatefulWidget()));
                              }, 
                              child: Text('SAVE', style: TextStyle(color: Colors.white, fontFamily: "Montserrat", fontSize: 18)), color: kPColor[10],),
                                ),
                  ),
                )
            ],
          ),
        ),
      )
      ),
    );
  }
}