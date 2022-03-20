import 'package:autism/shared/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EndTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
          endDrawer: Drawer(),
          key: scaffoldKey,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/image.jpg'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, right: 20),
                    child: Container(
                      width: 62,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('#FFCCE6'),
                      ),
                      child: IconButton(
                          padding: EdgeInsets.only(bottom: 6),
                          onPressed: () =>
                              scaffoldKey.currentState?.openEndDrawer(),
                          icon: Icon(
                            Icons.list,
                            size: 44,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: CustomText(text: 'Test', size: 34),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.5),
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: HexColor('#2F4899'),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: CustomText(
                              text:
                                  'you have done the test before and your score '
                                  'is (60%)',
                              size: 22,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#FFCCE6'),
                        ),
                        child: CustomText(
                            text: 'Would you restart the test ?', size: 32),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Row(
                          children: [
                            CustomButton(
                                text: "Yes",
                                color: HexColor('#9C4D9E'),
                                onPress: () {},
                                height: 70,
                                width: 80,
                                radius: 22),
                            SizedBox(
                              width: 70,
                            ),
                            CustomButton(
                                text: "No",
                                color: HexColor('#2F4899'),
                                onPress: () {},
                                height: 70,
                                width: 80,
                                radius: 22)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
