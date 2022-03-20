import 'package:autism/modules/test2/cubit/test2_cubit.dart';
import 'package:autism/modules/test2/cubit/test2_states.dart';
import 'package:autism/shared/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class Test2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (BlocProvider(create:(BuildContext context)=>TestCubitB(),
      child:  BlocConsumer<TestCubitB, TestStatesB>(
          builder: (context, state) {
            int value1 = TestCubitB.get(context).currentValue1;
            int value2 = TestCubitB.get(context).currentValue2;
            int value3 = TestCubitB.get(context).currentValue3;
            int value4 = TestCubitB.get(context).currentValue4;
            int value5 = TestCubitB.get(context).currentValue5;
            int value6 = TestCubitB.get(context).currentValue6;
            int value7 = TestCubitB.get(context).currentValue7;

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
                                  text: 'Q8.', text1: "Has a different voice or speech ?",
                                  checkbox: Radio(
                                      value: 1,
                                      groupValue: value1,
                                      onChanged: (value1) {
                                        TestCubitB.get(context).choseAnswer1(value1);
                                      }),
                                  checkbox1: Radio(
                                      value: 2,
                                      groupValue: value1,
                                      onChanged: (value1) {
                                        TestCubitB.get(context).choseAnswer1(value1);
                                      }),
                                  checkbox2: Radio(
                                      value: 3,
                                      groupValue: value1,
                                      onChanged: (value1) {
                                        TestCubitB.get(context).choseAnswer1(value1);
                                      })),
                            ],
                          ),
                          SizedBox(height: 26),
                          Column(
                            children: [
                              questions(
                                  text: 'Q9.',text1:'Expresses sounds involuntarily; clears throat, grunts, smacks, cries or screams ?',
                                  checkbox: Radio(
                                      value: 4,
                                      groupValue: value2,
                                      onChanged: (value2) {
                                        TestCubitB.get(context).choseAnswer2(value2);
                                      }),
                                  checkbox1: Radio(
                                      value: 5,
                                      groupValue: value2,
                                      onChanged: (value2) {
                                        TestCubitB.get(context).choseAnswer2(value2);
                                      }),
                                  checkbox2: Radio(
                                      value: 6,
                                      groupValue: value2,
                                      onChanged: (value2) {
                                        TestCubitB.get(context).choseAnswer2(value2);
                                      })),
                            ],
                          ),
                          SizedBox(height: 26),
                          questions(
                              text: 'Q10.',
text1:
"Is surprisingly good at some things and surprisingly poor at others ?",
                              checkbox: Radio(
                                  value: 7,
                                  groupValue: value3,
                                  onChanged: (value3) {
                                    TestCubitB.get(context).choseAnswer3(value3);
                                  }),
                              checkbox1: Radio(
                                  value: 8,
                                  groupValue: value3,
                                  onChanged: (value3) {
                                    TestCubitB.get(context).choseAnswer3(value3);
                                  }),
                              checkbox2: Radio(
                                  value: 9,
                                  groupValue: value3,
                                  onChanged: (value3) {
                                    TestCubitB.get(context).choseAnswer3(value3);
                                  })),
                          SizedBox(height: 26),
                          questions(
                            text: 'Q11.',
text1:
"Uses language freely but fails to make adjustment to fit social contexts or the needs of different listeners ?",
                              checkbox: Radio(
                                  value: 10,
                                  groupValue: value4,
                                  onChanged: (value4) {
                                    TestCubitB.get(context).choseAnswer4(value4);
                                  }),
                              checkbox1: Radio(
                                  value: 11,
                                  groupValue: value4,
                                  onChanged: (value4) {
                                    TestCubitB.get(context).choseAnswer4(value4);
                                  }),
                              checkbox2: Radio(
                                  value: 12,
                                  groupValue: value4,
                                  onChanged: (value4) {
                                    TestCubitB.get(context).choseAnswer4(value4);
                                  })),
                          SizedBox(height: 26),
                          questions(
                            text: 'Q12.', text1: "Lacks empathy ?",
                              checkbox: Radio(
                                  value: 13,
                                  groupValue: value5,
                                  onChanged: (value5) {
                                    TestCubitB.get(context).choseAnswer5(value5);
                                  }),
                              checkbox1: Radio(
                                  value: 14,
                                  groupValue: value5,
                                  onChanged: (value5) {
                                    TestCubitB.get(context).choseAnswer5(value5);
                                  }),
                              checkbox2: Radio(
                                  value: 15,
                                  groupValue: value5,
                                  onChanged: (value5) {
                                    TestCubitB.get(context).choseAnswer5(value5);
                                  })),
                          SizedBox(height: 26),
                          questions(
                              text: 'Q13.', text1: 'Makes naive and embarrassing remarks ?',
                              checkbox: Radio(
                                  value: 16,
                                  groupValue: value6,
                                  onChanged: (value6) {
                                    TestCubitB.get(context).choseAnswer6(value6);
                                  }),
                              checkbox1: Radio(
                                  value: 17,
                                  groupValue: value6,
                                  onChanged: (value6) {
                                    TestCubitB.get(context).choseAnswer6(value6);
                                  }),
                              checkbox2: Radio(
                                  value: 18,
                                  groupValue: value6,
                                  onChanged: (value6) {
                                    TestCubitB.get(context).choseAnswer6(value6);
                                  })),
                          SizedBox(height: 26),
                          questions(
                              text: 'Q14.', text1: "Has a deviant ?",
                              checkbox: Radio(
                                  value: 19,
                                  groupValue: value7,
                                  onChanged: (value7) {
                                    TestCubitB.get(context).choseAnswer7(value7);
                                  }),
                              checkbox1: Radio(
                                  value: 20,
                                  groupValue: value7,
                                  onChanged: (value7) {
                                    TestCubitB.get(context).choseAnswer7(value7);
                                  }),
                              checkbox2: Radio(
                                  value: 21,
                                  groupValue: value7,
                                  onChanged: (value7) {
                                    TestCubitB.get(context).choseAnswer7(value7);
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
                                          // navigateTo(context, Test2());
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
    )
    );
  }
}
