import 'package:autism/modules/profile_screen.dart';
import 'package:autism/modules/start_test.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (context) => widget), (route) {
      return false;
    });

Widget defaultFormField({
  required TextEditingController controller,
  required String text,
  required TextInputType type,
  FormFieldValidator<String>? validate,
}) =>
    Container(
      height: 44,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: HexColor('#FFCCE6'),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            focusColor: Colors.grey,
            border: InputBorder.none,
            hintText: text,
            hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black26,
                fontSize: 18,
                fontFamily: 'Signika')),
        controller: controller,
        keyboardType: type,
        validator: validate,
      ),
    );

Widget CustomText(
        {required String text,
        double? size = 24,
        Color color = Colors.black}) =>
    Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontFamily: 'Signika',
          fontSize: size),
    );

Widget CustomButton(
        {required String text,
        Color? color,
        Color? textColor,
        Color borderColor = Colors.white,
        required Function onPress,
        double? height = 40,
        double width = 150,
        double borderWidth = 1,
        double radius = 30,
        double padding = 0}) =>
    Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: MaterialButton(
          padding: EdgeInsets.only(left: padding),
          minWidth: width,
          height: 40,
          onPressed: () {
            onPress();
          },
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontFamily: 'Signika',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )),
    );

Widget CustomButtonDrawer(
        {required String text,
        String? imageName,
        required Function onPress,
        double? scale}) =>
    MaterialButton(
      onPressed: () {
        onPress();
      },
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Image.asset(
            imageName!,
            scale: scale,
          ),
          SizedBox(
            width: 15,
          ),
          CustomText(
            text: text,
            color: Colors.white,
            size: 28,
          ),
        ],
      ),
    );

Widget ListDrawer(context) => Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Settings',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Signika',
                fontSize: 30,
                color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButtonDrawer(
              text: 'profile',
              imageName: "images/user.png",
              scale: 17,
              onPress: () {
                navigateTo(context, ProfileScreen());
              }),
          SizedBox(
            height: 10,
          ),
          CustomButtonDrawer(
              text: 'Test',
              imageName: 'images/test.png',
              scale: 5,
              onPress: () {
                navigateTo(context, StartTest());
              }),
          SizedBox(
            height: 10,
          ),
          CustomButtonDrawer(
              text: 'Progress',
              imageName: 'images/rising.png',
              scale: 16,
              onPress: () {
                navigateTo(context, ProfileScreen());
              }),
          SizedBox(
            height: 10,
          ),
          CustomButtonDrawer(
              text: 'Kids list',
              imageName: 'images/contract.png',
              scale: 18,
              onPress: () {
                navigateTo(context, ProfileScreen());
              }),
          SizedBox(
            height: 10,
          ),
          CustomButtonDrawer(
              text: 'language',
              imageName: 'images/language.png',
              scale: 5,
              onPress: () {
                navigateTo(context, ProfileScreen());
              }),
          SizedBox(
            height: 10,
          ),
          CustomButtonDrawer(
              text: 'about us',
              imageName: 'images/teamwork .png',
              scale: 18,
              onPress: () {
                navigateTo(context, ProfileScreen());
              }),
        ],
      ),
    );

bool checkBoxState = false;
Color activeColor = HexColor('#2F4899');

Widget Question({required String text, required String text1}) => Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: RichText(
          text: TextSpan(
            text: text,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Signika',
                fontSize: 25),
            children: <TextSpan>[
              TextSpan(
                  text: text1,
                  style: TextStyle(
                      color: HexColor('#2F4899'),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Signika',
                      fontSize: 24)),
            ],
          ),
        )),
      ],
    );

Widget questions(
        {required String text,
        required String text1,
        required Radio checkbox,
        required Radio checkbox1,
        required Radio checkbox2}) =>
    Column(
      children: [
        Question(text: text, text1: text1),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    checkbox,
                    CustomText(
                        text: 'Yes', color: HexColor('#2F4899'), size: 25)
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    checkbox1,
                    CustomText(
                        text: 'Some what', color: HexColor('#2F4899'), size: 25)
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    checkbox2,
                    CustomText(text: 'No', color: HexColor('#2F4899'), size: 25)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
