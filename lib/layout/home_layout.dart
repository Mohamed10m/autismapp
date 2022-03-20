import 'package:autism/layout/cubit/home_cubit.dart';
import 'package:autism/layout/cubit/home_states.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: AppCubit.get(context)
                .screens[AppCubit.get(context).currentIndex],

            bottomNavigationBar: CurvedNavigationBar(
              height: 65,

              backgroundColor: HexColor('#FFCCE6'),
              items: [
                Icon(Icons.nine_k),
                Icon(Icons.home),
                Icon(Icons.archive_outlined),
              ],
              animationDuration: Duration(milliseconds: 200),
              index: 0,
              onTap: (index) {
                AppCubit.get(context).changeIndex(index);
              },
            ),
          );
        });
  }
}
