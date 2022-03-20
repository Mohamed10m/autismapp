import 'package:autism/shared/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
          key: scaffoldKey,
          endDrawer: Drawer(
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/drawer.jpg'), fit: BoxFit.cover),
                ),
                child: ListDrawer(context)),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/image.jpg'), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: 62,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#FFCCE6'),
                          ),
                          child: MaterialButton(
                            onPressed: () =>
                                scaffoldKey.currentState?.openEndDrawer(),
                            child: Image.asset("images/list.png", scale: 3),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 130.0,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: HexColor('#EFA740'),
                                  boxShadow: [
                                    BoxShadow(
                                        color: HexColor('#EFA740'),
                                        blurRadius: 4,
                                        offset: Offset(4, 9))
                                  ]),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(10),
                                        color: HexColor('#EFA740'),
                                      ),
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                        'images/book.png',
                                        scale: 12,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Express your needs',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Signika',
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: HexColor('#2F4899'),
                                  boxShadow: [
                                    BoxShadow(
                                        color: HexColor('#2F4899'),
                                        blurRadius: 4,
                                        offset: Offset(4, 9))
                                  ]),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(10),
                                        color: HexColor('#2F4899'),
                                      ),
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                          color: HexColor('#2F4899'),
                                          child: Image.asset(
                                            'images/teddy-bear.png',
                                            scale: 14,
                                          )),
                                    ),
                                  ),
                                  Text(
                                    'Express your needs',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Signika',
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: HexColor('#9C4D9E'),
                                  boxShadow: [
                                    BoxShadow(
                                        color: HexColor('#9C4D9E'),
                                        blurRadius: 4,
                                        offset: Offset(4, 9))
                                  ]),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(10),
                                        color: HexColor('#9C4D9E'),
                                      ),
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                        'images/jps.png',
                                        alignment: Alignment.center,
                                        scale: 4,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Express your needs',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Signika',
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
