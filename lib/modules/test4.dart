// import 'package:autism/shared/componants/componants.dart';
// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
//
// class Test4 extends StatelessWidget {
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
//                 questions(text:  'Q22.',text1: "Has difficulties in completing simple daily activities because of compulsory repetition of certain actions or thoughts ?"),
//                 SizedBox(height: 26),
//                 questions(text:  'Q23.', text1:'Has special routines: insists on no change ?',),
//                 SizedBox(height: 26),
//                 questions(text:  'Q24.',text1: "Shows idiosyncratic attachment to objects ?"),
//                 SizedBox(height: 26),
//                 questions(text:  'Q26.',text1: "Is bullied by other children ?"),
//                 SizedBox(height: 26),
//                 questions(text:  'Q27.',text1: 'Has markedly unusual facial expression ?'),
//                 SizedBox(height: 26),
//                 questions(text:  'Q28.',text1: "Has markedly unusual posture ?"),
//
//                 SizedBox(height: 15,),
//                 Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Row(children: [
//                     Expanded(child: CustomButton(text: 'Previous',borderColor:HexColor("#FFCCE6"), onPress: (){Navigator.pop(context);})),
//                     SizedBox(width: 15,),
//                     Expanded(child: CustomButton(text: 'Next',height: 50,borderWidth: 2.5, color: HexColor("#FFCCE6"), onPress: (){})),
//
//                   ],),
//                 )
//               ]),
//             ),
//           ),
//         ));
//   }
// }
