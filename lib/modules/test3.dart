// import 'package:autism/modules/test4.dart';
// import 'package:autism/shared/componants/componants.dart';
// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
//
// class Test3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('images/image.jpg'), fit: BoxFit.cover),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: SingleChildScrollView(
//               child: Column(children: [
//                 questions(text:  'Q15.',text1: "Wishes to sociable but fails to make relationships with peers ?"),
//                 SizedBox(height: 26),
//                 questions(text:  'Q16.', text1:'Can be with other children but only on his/her terms ?',),
//                 SizedBox(height: 26),
//                 questions(text:  'Q17.',text1: "Lacks best friend ?"),
//                 SizedBox(height: 26),
//                 questions(text:  'Q18.',text1: "Lacks common sense ?"),
//                 SizedBox(height: 26),
//                 questions(text:  'Q19.',text1: "Is poor at games: no idea of cooperating in a team , scores 'own goals' ?"),
//                 SizedBox(height: 26),
//                 questions(text:  'Q20.',text1: 'Has clumsy, ill coordinated, ungainly,awkward movements or gestures ?'),
//                 SizedBox(height: 26),
//                 questions(text:  'Q21.',text1: "Has involuntary face or body movements ?"),
//
//                 SizedBox(height: 15,),
//                 Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Row(children: [
//                     Expanded(child: CustomButton(text: 'Previous',borderColor:HexColor("#FFCCE6"), onPress: (){Navigator.pop(context);})),
//                     SizedBox(width: 15,),
//                     Expanded(child: CustomButton(text: 'Next',height: 50,borderWidth: 2.5, color: HexColor("#FFCCE6"), onPress: (){
//                       navigateTo(context,Test4());
//                     })),
//
//                   ],),
//                 )
//               ]),
//             ),
//           ),
//         ));
//   }
// }
