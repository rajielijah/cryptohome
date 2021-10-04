import 'package:cryptohome/constant/coin.dart';
import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/constant/customKeyboard.dart';
import 'package:cryptohome/views/home.dart';
import 'package:cryptohome/views/proof.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyCoin extends StatefulWidget {
  // const Deposit({ Key? key }) : super(key: key);

  @override
  _BuyCoinState createState() => _BuyCoinState();
}

class _BuyCoinState extends State<BuyCoin> {
  TextEditingController _controller = TextEditingController();

  bool _readOnly = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEv,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 1.0, top: 18),
                    child: coin(
                        context,
                        Image.asset('assets/images/me.png'),
                        Text(
                          'Bitcoin',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text('BTC'),
                        SvgPicture.asset('assets/images/chart.svg'),
                        Text(""),
                        Text("")),
                  ),
                  SizedBox(height: height / 17),
                  Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'You buy',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(width: width / 2.35),
                              Text(
                                'In',
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                child: TextField(
                                  controller: _controller,
                                  decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      hintText: '1500',
                                      hintStyle:
                                          TextStyle(color: Colors.white)),
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                  autofocus: true,
                                  readOnly: _readOnly,
                                ),
                              ),
                              SizedBox(width: 30),
                              Flexible(
                                child: TextField(
                                    controller: _controller,
                                    decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        hintText: '1500',
                                        hintStyle:
                                            TextStyle(color: Colors.white)),
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                    autofocus: true,
                                    readOnly: _readOnly,
                                  ),
                              ),
                              
                            ],
                          ),
                          SizedBox(
                            height: 15
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Min \$100 - Max \$10,00000',
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rate: ',
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    ' 530',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomKeyboard(
                    onTextInput: (myText) {
                      _insertText(myText);
                    },
                    onBackspace: () {
                      _backspace();
                    },
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  FlatButton(
                    minWidth: 330,
                    height: height / 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Proof()));
                    },
                    child: Text(
                      'BUY',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _insertText(String myText) {
    final text = _controller.text;
    final textSelection = _controller.selection;
    final newText = text.replaceRange(
      textSelection.start,
      textSelection.end,
      myText,
    );
    final myTextLength = myText.length;
    _controller.text = newText;
    _controller.selection = textSelection.copyWith(
      baseOffset: textSelection.start + myTextLength,
      extentOffset: textSelection.start + myTextLength,
    );
  }

  void _backspace() {
    final text = _controller.text;
    final textSelection = _controller.selection;
    final selectionLength = textSelection.end - textSelection.start;

    // There is a selection.
    if (selectionLength > 0) {
      final newText = text.replaceRange(
        textSelection.start,
        textSelection.end,
        '',
      );
      _controller.text = newText;
      _controller.selection = textSelection.copyWith(
        baseOffset: textSelection.start,
        extentOffset: textSelection.start,
      );
      return;
    }

    // The cursor is at the beginning.
    if (textSelection.start == 0) {
      return;
    }

    // Delete the previous character
    final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
    final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
    final newStart = textSelection.start - offset;
    final newEnd = textSelection.start;
    final newText = text.replaceRange(
      newStart,
      newEnd,
      '',
    );
    _controller.text = newText;
    _controller.selection = textSelection.copyWith(
      baseOffset: newStart,
      extentOffset: newStart,
    );
  }

  bool _isUtf16Surrogate(int value) {
    return value & 0xF800 == 0xD800;
  }
}
