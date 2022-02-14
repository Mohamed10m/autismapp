import 'dart:ui';
import 'package:autism/modules/profile_screen.dart';
import 'package:autism/shared/componants/componants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        endDrawer:Drawer(child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/drawer.jpg'),
            fit: BoxFit.cover),),
          child:Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Settings',style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Signika',fontSize: 30 ,color: Colors.white),),
                SizedBox(height: 20,),
                ListTile(leading: Image.asset('images/user.png',scale: 15,),
                    title: Text('profile',style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Signika',fontSize: 20 ,color: Colors.white),),
                    onTap:() {}
                ),
                SizedBox(height: 10,),
                ListTile(leading: Image.asset('images/rising.png',scale: 16,),
                  title: Text('progress',style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Signika',fontSize: 20 ,color: Colors.white)),
                  onTap: (){},
                ),
                SizedBox(height: 10,),
                ListTile(leading:Image.asset('images/contract.png',scale: 16,),
                  title: Text('kids list',style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Signika',fontSize: 20 ,color: Colors.white),),
                  onTap: (){},
                ),
                SizedBox(height: 10,),

                ListTile(leading:Image.asset('images/language.png',scale: 4,),
                  title: Text('language',style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Signika',fontSize: 20 ,color: Colors.white),),
                  onTap: (){},
                ),
                SizedBox(height: 10,),
                ListTile(leading:Image.asset('images/teamwork .png',scale: 15,),
                  title: Text('about us',style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Signika',fontSize: 20 ,color: Colors.white),),
                  onTap: (){},
                )
              ],
            ),
          ),
        ),) ,
        body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/image.jpg'),
            fit: BoxFit.cover),),
          child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 130.0,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HexColor('#EFA740'),
                          boxShadow: [
                            BoxShadow(color:HexColor('#EFA740'),blurRadius: 4,offset:Offset(4, 9))
                          ]
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: HexColor('#EFA740'),
                              ),
                              height: 50,
                              width: 50,
                              child:  Image.asset('images/book.png',scale: 12,),
                            ),
                          ),
                          Text('Express your needs' , style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Signika',fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HexColor('#2F4899'),
                          boxShadow: [
                            BoxShadow(color: HexColor('#2F4899'),blurRadius: 4,offset:Offset(4, 9))
                          ]

                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: HexColor('#2F4899'),

                              ),
                              height: 50,
                              width: 50,

                              child:Container(
                                  color: HexColor('#2F4899'),
                                  child: Image.asset('images/teddy-bear.png',scale: 14,)),
                            ),
                          ),
                          Text('Express your needs' , style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Signika',fontSize: 20 ,color: Colors.white),),
                        ],
                      ),

                    ),
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HexColor('#9C4D9E'),boxShadow: [
                        BoxShadow(color:HexColor('#9C4D9E'),blurRadius: 4,offset:Offset(4, 9))
                      ]
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: HexColor('#9C4D9E'),

                              ),
                              height: 50,
                              width: 50,

                              child: Image.asset('images/jps.png', alignment: Alignment.center,scale: 4,),
                            ),
                          ),
                          Text('Express your needs' , style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Signika',fontSize: 20,color: Colors.white,),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
