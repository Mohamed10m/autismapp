import 'package:autism/modules/test2/cubit/test2_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestCubitB extends Cubit<TestStatesB> {
  TestCubitB() : super(Test2InitialStates());

  static TestCubitB get(context) => BlocProvider.of(context);

  int currentValue1 = 0;
  void choseAnswer1(int value) {
    if (value < 4) currentValue1 = value;
    emit(AppChangeCheckbox2States());
  }

  int currentValue2 = 0;

  void choseAnswer2(int value) {
    if (value > 3 && value < 7) currentValue2 = value;
    emit(AppChangeCheckbox2States());
  }

  int currentValue3 = 0;

  void choseAnswer3(int value) {
    if (value > 6 && value < 10) currentValue3 = value;
    emit(AppChangeCheckbox2States());
  }

  int currentValue4 = 0;

  void choseAnswer4(int value) {
    if (value > 9 && value < 13) currentValue4 = value;
    emit(AppChangeCheckbox2States());
  }

  int currentValue5 = 0;

  void choseAnswer5(int value) {
    if (value > 12 && value < 16) currentValue5 = value;
    emit(AppChangeCheckbox2States());
  }

  int currentValue6 = 0;

  void choseAnswer6(int value) {
    if (value > 15 && value < 19) currentValue6 = value;
    emit(AppChangeCheckbox2States());
  }

  int currentValue7 = 0;

  void choseAnswer7(int value) {
    if (value > 18 && value < 22) currentValue7 = value;
    emit(AppChangeCheckbox2States());
  }
}
