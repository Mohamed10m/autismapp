import 'package:autism/modules/start_test.dart';
import 'package:autism/shared/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileScreen extends StatelessWidget {
  final namedController = TextEditingController();
  final lastNameController = TextEditingController();
  final genderController = TextEditingController();
  final ageController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 70.0, right: 30, left: 30),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomText(text: "Create profile", size: 35),
                SizedBox(
                  height: 40,
                ),
                Center(
                    child: CircleAvatar(
                  radius: 50,
                  backgroundColor: HexColor('#FFCCE6'),
                  child: Image.asset(
                    'images/image+.jpg',
                    scale: 10.0,
                  ),
                )),
                SizedBox(
                  height: 15,
                ),
                Center(child: CustomText(text: 'add profile picture', size: 20)),
                SizedBox(
                  height: 30,
                ),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Row(children: [
                          Expanded(
                            child: defaultFormField(
                              text: "First name",
                              validate: (String? value) {
                                if (value!.isEmpty)
                                  return "name must not be empty";
                                else
                                  return null;
                              },
                              controller: namedController,
                              type: TextInputType.name,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: defaultFormField(
                              text: "Last name",
                              validate: (String? value) {
                                if (value!.isEmpty)
                                  return "name must not be empty";
                                else
                                  return null;
                              },
                              controller: lastNameController,
                              type: TextInputType.name,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 30,
                        ),
                        defaultFormField(
                          text: "Gender",
                          validate: (String? value) {
                            if (value!.isEmpty)
                              return "name must not be empty";
                            else
                              return null;
                          },
                          controller: ageController,
                          type: TextInputType.name,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        defaultFormField(
                          text: "Age",
                          validate: (String? value) {
                            if (value!.isEmpty)
                              return "name must not be empty";
                            else
                              return null;
                          },
                          controller: genderController,
                          type: TextInputType.name,
                        ),
                      ],
                    )),
                SizedBox(height: 40),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                          height: 50,
                          textColor: Colors.white,
                          text: 'Start',
                          color: HexColor('#9C4D9E'),
                          onPress: () {
                            if (formKey.currentState!.validate()) {
                              navigateAndFinish(context, StartTest());
                            }
                          }),
                    ],
                  ),
                )
              ]),
            )),
      )),
    );
  }
}
