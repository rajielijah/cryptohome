import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/views/buy_coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListCoin extends StatelessWidget {
  const ListCoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
              "Buy your coins",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BuyCoin()));
              },
              child: Container(
                height: 75,
                width: width,
                color: kPrimaryColor,
                child: ListTile(
                  leading: Image.asset('assets/images/me.png'),
                  title: Row(
                    children: [
                      Text(
                        'Bticoin ',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Text(
                        'BTC',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    '5,204',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  trailing: Text(
                    '+9.77%',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.green),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BuyCoin()));
              },
              child: Container(
                height: 75,
                width: width,
                color: kPrimaryColor,
                child: ListTile(
                  leading: SvgPicture.asset('assets/images/ETH.svg'),
                  title: Row(
                    children: [
                      Text(
                        'Ethereum ',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Text(
                        'ETH',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    '5,204',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  trailing: Text(
                    '-19.77%',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.red),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BuyCoin()));
              },
              child: Container(
                height: 75,
                width: width,
                color: kPrimaryColor,
                child: ListTile(
                  leading: SvgPicture.asset('assets/images/USDT.svg'),
                  title: Row(
                    children: [
                      Text(
                        'Tether ',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Text(
                        'USDT',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    '5,204',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  trailing: Text(
                    '+9.77%',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.green),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BuyCoin()));
              },
              child: Container(
                height: 75,
                width: width,
                color: kPrimaryColor,
                child: ListTile(
                  leading: SvgPicture.asset('assets/images/bnb.svg'),
                  title: Row(
                    children: [
                      Text(
                        'Binance ',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Text(
                        'BNB',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    '5,204',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  trailing: Text(
                    '-12.29%',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.red),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    )));
  }
}
