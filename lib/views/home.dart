import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
        child: Container(
          color: Colors.white,
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [const Color(0xFF87D3DD), const Color(0xFF87D3DD)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        // stops: [0.0, 0.1],
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 4.2,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Welcome Bens',
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  letterSpacing: 0.7),
                            ),
                            Text(
                              'BTC Value',
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$2,509.75',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.7,
                                      fontSize: 26),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '+9.77%',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 17),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                'Available Bal.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                '\$320',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            )
                          ],
                        )),
                  ),
                  //  Positioned(
                  // bottom: 20,
                  // left: 10,
                  // child: Image.asset('images/l.png')),
                  Positioned(left: 30, top: 40, child: SvgPicture.asset('assets/images/vector9.svg')),
                    Positioned(left: 60, top: 50, child: SvgPicture.asset('assets/images/vector9.svg')),
                      Positioned(left: 90, top: 50, child: SvgPicture.asset('assets/images/vector9.svg'))
                ],
              ),
            ),
          
          ],
        )),
      ),
    );
  }
}
