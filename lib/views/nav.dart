import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/views/buy_coin.dart';
import 'package:cryptohome/views/home.dart';
import 'package:cryptohome/views/listCoin.dart';
import 'package:cryptohome/views/profile.dart';
import 'package:cryptohome/views/sell.dart';
import 'package:cryptohome/views/sellListCoin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const color  = kPrimaryColor;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ListCoin(),
    SellListCoin(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
@override
  Widget build(BuildContext context) {
    final String assetName = 'images/vector1.svg';
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
           BottomNavigationBarItem(
           icon: SvgPicture.asset('assets/images/navs4.svg'),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
           icon: SvgPicture.asset('assets/images/navs3.svg'),
            label: 'Buy',
            backgroundColor: color,
          ),
           BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/navs2.svg'),
            label: 'Sell',
            backgroundColor: color,
          ),
           BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/navs1.svg'),
            // icon: ImageIcon(AssetImage('images/vector8.png')),
            label: 'Profile',
            backgroundColor: color,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: kPrimaryColor.withGreen(5),
        currentIndex: _selectedIndex,
        selectedItemColor: kPColor[20],
        selectedIconTheme: IconThemeData(color: Colors.amber),
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        iconSize: 30,
        // elevation: 30,
      ),
    );
  }
}