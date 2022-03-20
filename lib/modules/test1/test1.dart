import 'package:autism/modules/test1/cubit/test1_cubit.dart';
import 'package:autism/modules/test1/cubit/test1_states.dart';
import 'package:autism/modules/test2/test2.dart';
import 'package:autism/shared/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class Test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context)=>TestCubitA(),
      child: BlocConsumer<TestCubitA, TestStatesA>(
          builder: (context, state) {
            int value1 = TestCubitA.get(context).currentValue1;
            int value2 = TestCubitA.get(context).currentValue2;
            int value3 = TestCubitA.get(context).currentValue3;
            int value4 = TestCubitA.get(context).currentValue4;
            int value5 = TestCubitA.get(context).currentValue5;
            int value6 = TestCubitA.get(context).currentValue6;
            int value7 = TestCubitA.get(context).currentValue7;
            return SafeArea(
              child: Scaffold(
                  body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/image.jpg'), fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      CustomText(
                          text:
                              'This child stands out as different from other children of his/her age in the following way'),
                      SizedBox(
                        height: 35,
                      ),
                      Column(
                        children: [
                          questions(
                              text: 'Q1.',
                              text1: "Is old-fashioned or precocious ?",
                              checkbox: Radio(
                                  value: 1,
                                  groupValue: value1,
                                  onChanged: (value1) {
                                    TestCubitA.get(context).choseAnswer1(value1);
                                  }),
                              checkbox1: Radio(
                                  value: 2,
                                  groupValue: value1,
                                  onChanged: (value1) {
                                    TestCubitA.get(context).choseAnswer1(value1);
                                  }),
                              checkbox2: Radio(
                                  value: 3,
                                  groupValue: value1,
                                  onChanged: (value1) {
                                    TestCubitA.get(context).choseAnswer1(value1);
                                  })),
                        ],
                      ),
                      SizedBox(height: 26),
                      Column(
                        children: [
                          questions(
                              text: 'Q2.',
                              text1:
                                  'Is regarded as an "eccentric professor" by the other children ?',
                              checkbox: Radio(
                                  value: 4,
                                  groupValue: value2,
                                  onChanged: (value2) {
                                    TestCubitA.get(context).choseAnswer2(value2);
                                  }),
                              checkbox1: Radio(
                                  value: 5,
                                  groupValue: value2,
                                  onChanged: (value2) {
                                    TestCubitA.get(context).choseAnswer2(value2);
                                  }),
                              checkbox2: Radio(
                                  value: 6,
                                  groupValue: value2,
                                  onChanged: (value2) {
                                    TestCubitA.get(context).choseAnswer2(value2);
                                  })),
                        ],
                      ),
                      SizedBox(height: 26),
                      questions(
                          text: 'Q3.',
                          text1:
                              "Lives somewhat in the world of his/her own with restricted idiosyncratic intellectual interests ?",
                          checkbox: Radio(
                              value: 7,
                              groupValue: value3,
                              onChanged: (value3) {
                                TestCubitA.get(context).choseAnswer3(value3);
                              }),
                          checkbox1: Radio(
                              value: 8,
                              groupValue: value3,
                              onChanged: (value3) {
                                TestCubitA.get(context).choseAnswer3(value3);
                              }),
                          checkbox2: Radio(
                              value: 9,
                              groupValue: value3,
                              onChanged: (value3) {
                                TestCubitA.get(context).choseAnswer3(value3);
                              })),
                      SizedBox(height: 26),
                      questions(
                          text: 'Q4.',
                          text1:
                              "Accumulates facts on certain subjects (good rote memory) but does not really understand the meaning ?",
                          checkbox: Radio(
                              value: 10,
                              groupValue: value4,
                              onChanged: (value4) {
                                TestCubitA.get(context).choseAnswer4(value4);
                              }),
                          checkbox1: Radio(
                              value: 11,
                              groupValue: value4,
                              onChanged: (value4) {
                                TestCubitA.get(context).choseAnswer4(value4);
                              }),
                          checkbox2: Radio(
                              value: 12,
                              groupValue: value4,
                              onChanged: (value4) {
                                TestCubitA.get(context).choseAnswer4(value4);
                              })),
                      SizedBox(height: 26),
                      questions(
                          text: 'Q5.',
                          text1:
                              "Has literal understanding of ambiguous and metaphorical ?",
                          checkbox: Radio(
                              value: 13,
                              groupValue: value5,
                              onChanged: (value5) {
                                TestCubitA.get(context).choseAnswer5(value5);
                              }),
                          checkbox1: Radio(
                              value: 14,
                              groupValue: value5,
                              onChanged: (value5) {
                                TestCubitA.get(context).choseAnswer5(value5);
                              }),
                          checkbox2: Radio(
                              value: 15,
                              groupValue: value5,
                              onChanged: (value5) {
                                TestCubitA.get(context).choseAnswer5(value5);
                              })),
                      SizedBox(height: 26),
                      questions(
                          text: 'Q6.',
                          text1:
                              'Has a deviant style of communication with a formal, fussy, old-fashioned or "robot-like" language ?',
                          checkbox: Radio(
                              value: 16,
                              groupValue: value6,
                              onChanged: (value6) {
                                TestCubitA.get(context).choseAnswer6(value6);
                              }),
                          checkbox1: Radio(
                              value: 17,
                              groupValue: value6,
                              onChanged: (value6) {
                                TestCubitA.get(context).choseAnswer6(value6);
                              }),
                          checkbox2: Radio(
                              value: 18,
                              groupValue: value6,
                              onChanged: (value6) {
                                TestCubitA.get(context).choseAnswer6(value6);
                              })),
                      SizedBox(height: 26),
                      questions(
                          text: 'Q7.',
                          text1: "Invents idiosyncratic words and expressions ?",
                          checkbox: Radio(
                              value: 19,
                              groupValue: value7,
                              onChanged: (value7) {
                                TestCubitA.get(context).choseAnswer7(value7);
                              }),
                          checkbox1: Radio(
                              value: 20,
                              groupValue: value7,
                              onChanged: (value7) {
                                TestCubitA.get(context).choseAnswer7(value7);
                              }),
                          checkbox2: Radio(
                              value: 21,
                              groupValue: value7,
                              onChanged: (value7) {
                                TestCubitA.get(context).choseAnswer7(value7);
                              })),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Expanded(
                                child: CustomButton(
                                    text: 'Previous',
                                    borderColor: HexColor("#FFCCE6"),
                                    onPress: () {
                                      Navigator.pop(context);
                                    })),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: CustomButton(
                                    text: 'Next',
                                    height: 50,
                                    borderWidth: 2.5,
                                    color: HexColor("#FFCCE6"),
                                    onPress: () {
                                      navigateTo(context, Test2());
                                    })),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              )),
            );
          },
          listener: (context, state) {}),
    );
  }
}
