import 'package:cryptohome/constant/coin.dart';
import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/constant/customKeyboard.dart';
import 'package:cryptohome/views/home.dart';
import 'package:cryptohome/views/proof.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SellCoin extends StatefulWidget {
  // const Deposit({ Key? key }) : super(key: key);

  @override
  _SellCoinState createState() => _SellCoinState();
}

class _SellCoinState extends State<SellCoin> {
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
                  Text('\$2,309.43',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 0.7)),
                  Text(
                    '+9.77%',
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  )),
            ),
                  SizedBox(height: height / 17),
                  Text('Enter Amount in BTC'),
                  SizedBox(height: height / 27),
                  Center(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            bottom: width / 27, // HERE THE IMPORTANT PART
                          ),
                          border: InputBorder.none,
                          hintText: '\$0',
                          hintStyle: TextStyle(color: Colors.black)),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 34, color: kPrimaryColor),
                      autofocus: true,
                      showCursor: true,
                      readOnly: _readOnly,
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                   Text('Min \$100 - Max \$10,00000'),
                     SizedBox(
                    height: 27,
                  ),
                   Text('Value (N):  N10,000'),
                  // SizedBox(
                  //   height: height / 12,
                  // ),
                 Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Rate: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                      'SELL',
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