import 'package:autism/layout/cubit/home_states.dart';
import 'package:autism/modules/home_screen.dart';
import 'package:autism/modules/profile_screen.dart';
import 'package:autism/modules/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppCubit extends Cubit<AppStates> {


  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 1;

  List<Widget> screens = [
    ProfileScreen(),
    HomeScreen(),
    SettingsScreen()
  ];

  void changeIndex(int index)
  {
    currentIndex = index;
    emit(AppChangeButtonNavBarStates());
  }
}