import 'package:cryptohome/constant/color.dart';
import 'package:cryptohome/views/buy_coin.dart';
import 'package:cryptohome/views/home.dart';
import 'package:cryptohome/views/listCoin.dart';
import 'package:cryptohome/views/profile.dart';
import 'package:cryptohome/views/sell.dart';
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
    SellCoin(),
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
           icon: SvgPicture.asset('assets/images/user5.svg'),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
           icon: SvgPicture.asset('assets/images/user2.svg'),
            label: 'Buy',
            backgroundColor: color,
          ),
           BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/user1.svg'),
            label: 'Sell',
            backgroundColor: color,
          ),
           BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/User.svg'),
            // icon: ImageIcon(AssetImage('images/vector8.png')),
            label: 'Profile',
            backgroundColor: color,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: kPColor,
        currentIndex: _selectedIndex,
        selectedItemColor: kPColor[20],
        selectedIconTheme: IconThemeData(color: kPColor[20]),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        iconSize: 30,
        // elevation: 30,
      ),
    );
  }
}