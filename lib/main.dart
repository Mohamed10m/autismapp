import 'package:autism/layout/cubit/home_cubit.dart';
import 'package:autism/layout/cubit/home_states.dart';
import 'package:autism/layout/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context)=>AppCubit(),
    child:BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
      builder: (context,state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeLayout(),);
      }, ) ,
    );
  }
}
