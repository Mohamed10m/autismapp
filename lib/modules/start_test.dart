import 'package:autism/layout/home_layout.dart';
import 'package:autism/modules/test1/test1.dart';
import 'package:autism/shared/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StartTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/image.jpg'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  text: 'Wondering if your child has autism ?',
                  size: 32,
                  color: Colors.black),
              SizedBox(
                height: 5,
              ),
              CustomText(text: 'Let\'s find out !', color: Colors.grey, size: 30),
              SizedBox(
                height: 30,
              ),
              CustomText(
                  text: '-Make sure that your child is more 3 years old.',
                  size: 18,
                  color: Colors.red),
              SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomButton(
                          text: "Start Test",
                          color: HexColor('#9C4D9E'),
                          textColor: Colors.white,
                          onPress: () {
                            navigateTo(context, Test1());
                          },
                          height: 80,
                          width: 100,
                          radius: 20)),
                  SizedBox(
                    width: 18.0,
                  ),
                  CustomText(text: "or", size: 35, color: Colors.black),
                  SizedBox(
                    width: 18.0,
                  ),
                  Expanded(
                      child: CustomButton(
                          color: HexColor('#2F4899'),
                          text: "skip",
                          textColor: Colors.white,
                          onPress: () {
                            navigateTo(context, HomeLayout());
                          },
                          height: 80,
                          radius: 20))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
