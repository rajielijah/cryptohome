import 'package:cryptohome/constant/color.dart';
import 'package:flutter/material.dart';


var provideris;

class AddBank extends StatefulWidget {
  @override
  _AddBankState createState() => _AddBankState();
}
class _AddBankState extends State<AddBank> {
   final formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final cardNoField = TextFormField(
      autofocus: false,
      maxLines: 1,
      minLines: 1,
      //  onSaved: (value) => _accountNumber = value,
      decoration: InputDecoration(
          contentPadding: new EdgeInsets.symmetric(),
          enabledBorder: UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.grey)),
           focusedBorder: UnderlineInputBorder(
            borderSide:
                new BorderSide(color: Colors.white54, style: BorderStyle.solid)),
          hintText: ''),
      
    );

    final pinField = TextFormField(
      autofocus: false,
      // obscureText: true,
      // maxLines: 1,
      //  onSaved: (value) => _accountName = value,
      // minLines: 1,
      // validator: (value) => value.isEmpty ? "Please enter pin" : null,
      decoration: InputDecoration(
          contentPadding: new EdgeInsets.symmetric(),
          enabledBorder: UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.grey)),
           focusedBorder: UnderlineInputBorder(
            borderSide:
                new BorderSide(color: Colors.white54, style: BorderStyle.solid)),
          hintText: ''),
    );
    final cvvField = TextFormField(
      autofocus: false,
      maxLines: 1,
      //  onSaved: (value) => _bankName = value,
      minLines: 1,
      decoration: InputDecoration(
          contentPadding: new EdgeInsets.symmetric(),
          enabledBorder: UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.grey)),
           focusedBorder: UnderlineInputBorder(
            borderSide:
                new BorderSide(color: Colors.white54, style: BorderStyle.solid)),
         ),
    );

      var loading = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(),
        Text(" Registering ... Please wait")
      ],
    );

    return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(Icons.arrow_back)),
                        ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              height: height / 1.45,
                              width: width,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                  
                                    SizedBox(
                                      height: height / 30,
                                    ),
                                    Text('Add bank',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                                      fontWeight: FontWeight.w600, fontSize: 24)),
                                    SizedBox(
                                      height: height / 50,
                                    ),
                                    Text(
                                      'Fill in you card details',
                                      style: TextStyle(
                                          color: kColor[10],
                                          fontFamily: 'Montserrat',
                                                      fontWeight: FontWeight.w400,
                                          letterSpacing: 0.7),
                                    ),
                                    SizedBox(
                                      height: height / 45,
                                    ),
                                    Text(
                                      'Account Number',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                                      fontWeight: FontWeight.w600, fontSize: 18),
                                    ),
                                    // SizedBox(
                                    //   height: height / 80,
                                    // ),
                                    cardNoField,
                                    SizedBox(
                                      height: height / 25,
                                    ),
                                    Text(
                                      'Account Name',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                                      fontWeight: FontWeight.w400, fontSize: 18),
                                    ),
                                    // SizedBox(
                                    //   height: height / 80,
                                    // ),
                                    pinField,
                                    SizedBox(
                                      height: height / 25,
                                    ),
                                    Text(
                                      'Bank Name',
                                      style: TextStyle(color: Colors.white,
                                          fontFamily: 'Montserrat',
                                                      fontWeight: FontWeight.w400, fontSize: 18),
                                    ),
                                    // SizedBox(
                                    //   height: height / 80,
                                    // ),
                                    cvvField,
                                    SizedBox(
                                      height: height / 25,
                                    ),
                                    // Text(
                                    //   'Expiry Date',
                                    //   style: TextStyle(
                                    //       fontWeight: FontWeight.bold, fontSize: 18),
                                    // ),
                                    // SizedBox(
                                    //   height: height / 80,
                                    // ),
                                    // Container(
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(10),
                                    //     color: Colors.white,
                                    //   ),
                                    //   // padding: EdgeInsets.all(10),
                                    //   child: Column(
                                    //     children: [
                                    //       expiryDateField,
                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: Container(
                                // color: kPrimaryColor,
                                child: FlatButton(
                                  minWidth: 330,
                                  height: 50,
                                  color:kPrimaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  onPressed:(){
                                    //  doAddBank(context, provideris);
                                  },
                                  child: Text('SAVE & CONTINUE',
                                       style: TextStyle(color: Colors.white, fontSize: 18))),
                                 
                                ),
                              ),
                            ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
  }
}
